; ModuleID = '/home/carl/AnghaBench/linux/net/bpfilter/extr_main.c_loop.c'
source_filename = "/home/carl/AnghaBench/linux/net/bpfilter/extr_main.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_request = type { i64 }
%struct.mbox_reply = type { i32 }

@debug_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid request %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reply failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop() #0 {
  %1 = alloca %struct.mbox_request, align 8
  %2 = alloca %struct.mbox_reply, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %0, %32
  %5 = call i32 @read(i32 0, %struct.mbox_request* %1, i32 8)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 8
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load i32, i32* @debug_fd, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dprintf(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %33

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mbox_request, %struct.mbox_request* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @handle_set_cmd(%struct.mbox_request* %1)
  br label %21

19:                                               ; preds = %13
  %20 = call i32 @handle_get_cmd(%struct.mbox_request* %1)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.mbox_reply, %struct.mbox_reply* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 @write(i32 1, %struct.mbox_reply* %2, i32 4)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @debug_fd, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dprintf(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %33

32:                                               ; preds = %21
  br label %4

33:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @read(i32, %struct.mbox_request*, i32) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @handle_set_cmd(%struct.mbox_request*) #1

declare dso_local i32 @handle_get_cmd(%struct.mbox_request*) #1

declare dso_local i32 @write(i32, %struct.mbox_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

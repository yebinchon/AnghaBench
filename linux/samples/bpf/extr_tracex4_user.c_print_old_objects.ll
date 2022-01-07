; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex4_user.c_print_old_objects.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex4_user.c_print_old_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pair = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"\1B[1;1H\1B[2J\00", align 1
@map_fd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"obj 0x%llx is %2lldsec old was allocated at ip %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_old_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_old_objects(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pair, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i64 (...) @time_get_ns()
  store i64 %7, i64* %3, align 8
  %8 = call i32 @write(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 12)
  store i32 %8, i32* %4, align 4
  store i32 -1, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %26, %1
  %10 = load i32*, i32** @map_fd, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @bpf_map_get_next_key(i32 %12, i32* %4, i32* %5)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load i32*, i32** @map_fd, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bpf_map_lookup_elem(i32 %18, i32* %5, %struct.pair* %6)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = icmp slt i64 %24, 1000000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %9

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = sdiv i64 %32, 1000000000
  %34 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %28, i64 %33, i32 %35)
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i64 @time_get_ns(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.pair*) #1

declare dso_local i32 @printf(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

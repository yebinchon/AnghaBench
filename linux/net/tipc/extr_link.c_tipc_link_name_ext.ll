; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_name_ext.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_name_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32 }

@TIPC_MAX_LINK_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"broadcast-sender\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"broadcast-receiver, peer %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tipc_link_name_ext(%struct.tipc_link* %0, i8* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca i8*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %6 = icmp ne %struct.tipc_link* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %10 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %8, i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %13 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %18 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %38

19:                                               ; preds = %11
  %20 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %21 = call i64 @link_is_bc_rcvlink(%struct.tipc_link* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %26 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %27 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %37

30:                                               ; preds = %19
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %33 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %36 = call i32 @memcpy(i8* %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  br label %38

38:                                               ; preds = %37, %15
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @link_is_bc_sndlink(%struct.tipc_link*) #1

declare dso_local i64 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

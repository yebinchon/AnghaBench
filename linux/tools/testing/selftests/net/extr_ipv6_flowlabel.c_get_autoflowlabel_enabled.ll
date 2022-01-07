; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel.c_get_autoflowlabel_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel.c_get_autoflowlabel_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"/proc/sys/net/ipv6/auto_flowlabels\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open sysctl\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read sysctl\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"read sysctl: 0\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"close sysctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_autoflowlabel_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_autoflowlabel_enabled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = call i32 @open(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @error(i32 1, i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @read(i32 %12, i8* %3, i32 1)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @error(i32 1, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @close(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @error(i32 1, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8, i8* %3, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 49
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

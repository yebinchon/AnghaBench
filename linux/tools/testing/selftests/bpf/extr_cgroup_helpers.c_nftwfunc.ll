; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_nftwfunc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_nftwfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32 }

@FTW_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Removing cgroup: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32, %struct.FTW*)* @nftwfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nftwfunc(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.FTW*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.FTW* %3, %struct.FTW** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @FTW_D, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @rmdir(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %13, %4
  ret i32 0
}

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

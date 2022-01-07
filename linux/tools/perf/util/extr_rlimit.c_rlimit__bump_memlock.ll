; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_rlimit.c_rlimit__bump_memlock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_rlimit.c_rlimit__bump_memlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Couldn't bump rlimit(MEMLOCK), failures may take place when creating BPF maps, etc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rlimit__bump_memlock() #0 {
  %1 = alloca %struct.rlimit, align 4
  %2 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %3 = call i64 @getrlimit(i32 %2, %struct.rlimit* %1)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 4
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %13 = call i64 @setrlimit(i32 %12, %struct.rlimit* %1)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %23 = call i64 @setrlimit(i32 %22, %struct.rlimit* %1)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %15
  br label %28

28:                                               ; preds = %27, %5
  br label %29

29:                                               ; preds = %28, %0
  ret void
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_dso__swap_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_dso__swap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i8* }

@dso__swap_init.endian = internal constant i32 1, align 4
@DSO_SWAP__NO = common dso_local global i8* null, align 8
@DSO_SWAP__YES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"unrecognized DSO data encoding %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i8)* @dso__swap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__swap_init(%struct.dso* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca i8, align 1
  store %struct.dso* %0, %struct.dso** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8*, i8** @DSO_SWAP__NO, align 8
  %7 = load %struct.dso*, %struct.dso** %4, align 8
  %8 = getelementptr inbounds %struct.dso, %struct.dso* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load i8, i8* bitcast (i32* @dso__swap_init.endian to i8*), align 4
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** @DSO_SWAP__YES, align 8
  %17 = load %struct.dso*, %struct.dso** %4, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  br label %34

20:                                               ; preds = %2
  %21 = load i8, i8* bitcast (i32* @dso__swap_init.endian to i8*), align 4
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** @DSO_SWAP__YES, align 8
  %26 = load %struct.dso*, %struct.dso** %4, align 8
  %27 = getelementptr inbounds %struct.dso, %struct.dso* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  br label %34

29:                                               ; preds = %2
  %30 = load i8, i8* %5, align 1
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %28, %19
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

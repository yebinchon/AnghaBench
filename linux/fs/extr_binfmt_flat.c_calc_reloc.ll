; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_flat.c_calc_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_flat.c_calc_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.lib_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"reloc outside program 0x%lx (0 - 0x%lx/0x%lx)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c", killing %s!\0A\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@RELOC_FAILED = common dso_local global i64 0, align 8
@MAX_SHARED_LIBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.lib_info*, i32, i32)* @calc_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_reloc(i64 %0, %struct.lib_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lib_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.lib_info* %1, %struct.lib_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.lib_info*, %struct.lib_info** %7, align 8
  %17 = getelementptr inbounds %struct.lib_info, %struct.lib_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.lib_info*, %struct.lib_info** %7, align 8
  %25 = getelementptr inbounds %struct.lib_info, %struct.lib_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load %struct.lib_info*, %struct.lib_info** %7, align 8
  %33 = getelementptr inbounds %struct.lib_info, %struct.lib_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct.lib_info*, %struct.lib_info** %7, align 8
  %41 = getelementptr inbounds %struct.lib_info, %struct.lib_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %51, %52
  %54 = icmp ugt i64 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %14, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %14, align 8
  %63 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %61, i64 %62)
  br label %80

64:                                               ; preds = %4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %69, %70
  store i64 %71, i64* %10, align 8
  br label %78

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %14, align 8
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i64, i64* %10, align 8
  store i64 %79, i64* %5, align 8
  br label %89

80:                                               ; preds = %55
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @SIGSEGV, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %87 = call i32 @send_sig(i32 %85, %struct.TYPE_5__* %86, i32 0)
  %88 = load i64, i64* @RELOC_FAILED, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %80, %78
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @send_sig(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

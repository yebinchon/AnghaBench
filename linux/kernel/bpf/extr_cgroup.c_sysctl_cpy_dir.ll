; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_sysctl_cpy_dir.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_sysctl_cpy_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_dir = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ctl_dir* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctl_dir*, i8**, i64*)* @sysctl_cpy_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sysctl_cpy_dir(%struct.ctl_dir* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ctl_dir* %0, %struct.ctl_dir** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %11 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %14 = icmp ne %struct.ctl_dir* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %17 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.ctl_dir*, %struct.ctl_dir** %18, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @sysctl_cpy_dir(%struct.ctl_dir* %19, i8** %20, i64* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %83

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %32 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strscpy(i8* %30, i8* %37, i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %4, align 8
  br label %83

45:                                               ; preds = %28
  %46 = load i64, i64* %9, align 8
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %46
  store i8* %49, i8** %47, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, %50
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %4, align 8
  br label %83

61:                                               ; preds = %45
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @strscpy(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %4, align 8
  br label %83

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %72
  store i8* %75, i8** %73, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %80, %81
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %71, %69, %59, %43, %25
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @strscpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

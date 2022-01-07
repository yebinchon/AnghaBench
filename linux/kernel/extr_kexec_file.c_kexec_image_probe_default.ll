; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_file.c_kexec_image_probe_default.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_file.c_kexec_image_probe_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kexec_file_ops = type { i32 (i8*, i64)* }
%struct.kimage = type { %struct.kexec_file_ops* }

@ENOEXEC = common dso_local global i32 0, align 4
@kexec_file_loaders = common dso_local global %struct.kexec_file_ops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexec_image_probe_default(%struct.kimage* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kimage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kexec_file_ops**, align 8
  %9 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @ENOEXEC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** @kexec_file_loaders, align 8
  %13 = getelementptr inbounds %struct.kexec_file_ops*, %struct.kexec_file_ops** %12, i64 0
  store %struct.kexec_file_ops** %13, %struct.kexec_file_ops*** %8, align 8
  br label %14

14:                                               ; preds = %43, %3
  %15 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** %8, align 8
  %16 = load %struct.kexec_file_ops*, %struct.kexec_file_ops** %15, align 8
  %17 = icmp ne %struct.kexec_file_ops* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** %8, align 8
  %20 = load %struct.kexec_file_ops*, %struct.kexec_file_ops** %19, align 8
  %21 = getelementptr inbounds %struct.kexec_file_ops, %struct.kexec_file_ops* %20, i32 0, i32 0
  %22 = load i32 (i8*, i64)*, i32 (i8*, i64)** %21, align 8
  %23 = icmp ne i32 (i8*, i64)* %22, null
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ false, %14 ], [ %23, %18 ]
  br i1 %25, label %26, label %46

26:                                               ; preds = %24
  %27 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** %8, align 8
  %28 = load %struct.kexec_file_ops*, %struct.kexec_file_ops** %27, align 8
  %29 = getelementptr inbounds %struct.kexec_file_ops, %struct.kexec_file_ops* %28, i32 0, i32 0
  %30 = load i32 (i8*, i64)*, i32 (i8*, i64)** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 %30(i8* %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** %8, align 8
  %38 = load %struct.kexec_file_ops*, %struct.kexec_file_ops** %37, align 8
  %39 = load %struct.kimage*, %struct.kimage** %5, align 8
  %40 = getelementptr inbounds %struct.kimage, %struct.kimage* %39, i32 0, i32 0
  store %struct.kexec_file_ops* %38, %struct.kexec_file_ops** %40, align 8
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.kexec_file_ops**, %struct.kexec_file_ops*** %8, align 8
  %45 = getelementptr inbounds %struct.kexec_file_ops*, %struct.kexec_file_ops** %44, i32 1
  store %struct.kexec_file_ops** %45, %struct.kexec_file_ops*** %8, align 8
  br label %14

46:                                               ; preds = %24
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

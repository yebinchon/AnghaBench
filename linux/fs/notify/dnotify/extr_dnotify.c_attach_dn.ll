; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/dnotify/extr_dnotify.c_attach_dn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/dnotify/extr_dnotify.c_attach_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnotify_struct = type { i64, i32, %struct.dnotify_struct*, %struct.file*, i32 }
%struct.dnotify_mark = type { %struct.dnotify_struct* }
%struct.file = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnotify_struct*, %struct.dnotify_mark*, i64, i32, %struct.file*, i32)* @attach_dn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_dn(%struct.dnotify_struct* %0, %struct.dnotify_mark* %1, i64 %2, i32 %3, %struct.file* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dnotify_struct*, align 8
  %9 = alloca %struct.dnotify_mark*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dnotify_struct*, align 8
  store %struct.dnotify_struct* %0, %struct.dnotify_struct** %8, align 8
  store %struct.dnotify_mark* %1, %struct.dnotify_mark** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.file* %4, %struct.file** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.dnotify_mark*, %struct.dnotify_mark** %9, align 8
  %16 = getelementptr inbounds %struct.dnotify_mark, %struct.dnotify_mark* %15, i32 0, i32 0
  %17 = load %struct.dnotify_struct*, %struct.dnotify_struct** %16, align 8
  store %struct.dnotify_struct* %17, %struct.dnotify_struct** %14, align 8
  br label %18

18:                                               ; preds = %44, %6
  %19 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %20 = icmp ne %struct.dnotify_struct* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %23 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %29 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %28, i32 0, i32 3
  %30 = load %struct.file*, %struct.file** %29, align 8
  %31 = load %struct.file*, %struct.file** %12, align 8
  %32 = icmp eq %struct.file* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %36 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %39 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %69

44:                                               ; preds = %27, %21
  %45 = load %struct.dnotify_struct*, %struct.dnotify_struct** %14, align 8
  %46 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %45, i32 0, i32 2
  %47 = load %struct.dnotify_struct*, %struct.dnotify_struct** %46, align 8
  store %struct.dnotify_struct* %47, %struct.dnotify_struct** %14, align 8
  br label %18

48:                                               ; preds = %18
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %51 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %54 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.file*, %struct.file** %12, align 8
  %56 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %57 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %56, i32 0, i32 3
  store %struct.file* %55, %struct.file** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %60 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dnotify_mark*, %struct.dnotify_mark** %9, align 8
  %62 = getelementptr inbounds %struct.dnotify_mark, %struct.dnotify_mark* %61, i32 0, i32 0
  %63 = load %struct.dnotify_struct*, %struct.dnotify_struct** %62, align 8
  %64 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %65 = getelementptr inbounds %struct.dnotify_struct, %struct.dnotify_struct* %64, i32 0, i32 2
  store %struct.dnotify_struct* %63, %struct.dnotify_struct** %65, align 8
  %66 = load %struct.dnotify_struct*, %struct.dnotify_struct** %8, align 8
  %67 = load %struct.dnotify_mark*, %struct.dnotify_mark** %9, align 8
  %68 = getelementptr inbounds %struct.dnotify_mark, %struct.dnotify_mark* %67, i32 0, i32 0
  store %struct.dnotify_struct* %66, %struct.dnotify_struct** %68, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %48, %33
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

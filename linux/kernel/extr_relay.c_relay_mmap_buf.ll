; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_mmap_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_mmap_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.rchan_buf*, %struct.file*)* }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.rchan_buf*, i32, i32*, %struct.file* }

@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@relay_file_mmap_ops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rchan_buf*, %struct.vm_area_struct*)* @relay_mmap_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relay_mmap_buf(%struct.rchan_buf* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 5
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %7, align 8
  %18 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %19 = icmp ne %struct.rchan_buf* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %26 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 4
  store i32* @relay_file_mmap_ops, i32** %36, align 8
  %37 = load i32, i32* @VM_DONTEXPAND, align 4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  store %struct.rchan_buf* %42, %struct.rchan_buf** %44, align 8
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.rchan_buf*, %struct.file*)*, i32 (%struct.rchan_buf*, %struct.file*)** %50, align 8
  %52 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = call i32 %51(%struct.rchan_buf* %52, %struct.file* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %34, %31, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

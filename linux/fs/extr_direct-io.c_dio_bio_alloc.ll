; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dio_submit = type { i32, i32, %struct.bio* }
%struct.bio = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dio_bio_end_aio = common dso_local global i32 0, align 4
@dio_bio_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*, %struct.dio_submit*, %struct.block_device*, i32, i32)* @dio_bio_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_alloc(%struct.dio* %0, %struct.dio_submit* %1, %struct.block_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dio*, align 8
  %7 = alloca %struct.dio_submit*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  store %struct.dio* %0, %struct.dio** %6, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %7, align 8
  store %struct.block_device* %2, %struct.block_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call %struct.bio* @bio_alloc(i32 %12, i32 %13)
  store %struct.bio* %14, %struct.bio** %11, align 8
  %15 = load %struct.bio*, %struct.bio** %11, align 8
  %16 = load %struct.block_device*, %struct.block_device** %8, align 8
  %17 = call i32 @bio_set_dev(%struct.bio* %15, %struct.block_device* %16)
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.bio*, %struct.bio** %11, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.bio*, %struct.bio** %11, align 8
  %23 = load %struct.dio*, %struct.dio** %6, align 8
  %24 = getelementptr inbounds %struct.dio, %struct.dio* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dio*, %struct.dio** %6, align 8
  %27 = getelementptr inbounds %struct.dio, %struct.dio* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bio_set_op_attrs(%struct.bio* %22, i32 %25, i32 %28)
  %30 = load %struct.dio*, %struct.dio** %6, align 8
  %31 = getelementptr inbounds %struct.dio, %struct.dio* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @dio_bio_end_aio, align 4
  %36 = load %struct.bio*, %struct.bio** %11, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %5
  %39 = load i32, i32* @dio_bio_end_io, align 4
  %40 = load %struct.bio*, %struct.bio** %11, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.dio*, %struct.dio** %6, align 8
  %44 = getelementptr inbounds %struct.dio, %struct.dio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bio*, %struct.bio** %11, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bio*, %struct.bio** %11, align 8
  %51 = load %struct.dio_submit*, %struct.dio_submit** %7, align 8
  %52 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %51, i32 0, i32 2
  store %struct.bio* %50, %struct.bio** %52, align 8
  %53 = load %struct.dio_submit*, %struct.dio_submit** %7, align 8
  %54 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dio_submit*, %struct.dio_submit** %7, align 8
  %57 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

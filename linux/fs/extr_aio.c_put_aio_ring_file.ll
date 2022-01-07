; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_put_aio_ring_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_put_aio_ring_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*)* @put_aio_ring_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_aio_ring_file(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %5 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %6 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %5, i32 0, i32 0
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call i32 @file_inode(%struct.file* %11)
  %13 = call i32 @truncate_setsize(i32 %12, i32 0)
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %4, align 8
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %23 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %22, i32 0, i32 0
  store %struct.file* null, %struct.file** %23, align 8
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i32 @fput(%struct.file* %27)
  br label %29

29:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @truncate_setsize(i32, i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

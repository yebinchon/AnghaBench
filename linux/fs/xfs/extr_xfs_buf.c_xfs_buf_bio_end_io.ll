; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64 }
%struct.xfs_buf = type { i32, i32, i32, i32, i32 }

@XBF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @xfs_buf_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_buf_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.xfs_buf*
  store %struct.xfs_buf* %8, %struct.xfs_buf** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @blk_status_to_errno(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @cmpxchg(i32* %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %29 = call i64 @xfs_buf_is_vmapped(%struct.xfs_buf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XBF_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %43 = call i32 @xfs_buf_vmap_len(%struct.xfs_buf* %42)
  %44 = call i32 @invalidate_kernel_vmap_range(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %31, %27, %22
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 1
  %48 = call i32 @atomic_dec_and_test(i32* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %52 = call i32 @xfs_buf_ioend_async(%struct.xfs_buf* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = call i32 @bio_put(%struct.bio* %54)
  ret void
}

declare dso_local i32 @blk_status_to_errno(i64) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @xfs_buf_is_vmapped(%struct.xfs_buf*) #1

declare dso_local i32 @invalidate_kernel_vmap_range(i32, i32) #1

declare dso_local i32 @xfs_buf_vmap_len(%struct.xfs_buf*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xfs_buf_ioend_async(%struct.xfs_buf*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

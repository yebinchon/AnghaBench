; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_alloc_layouterror_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_alloc_layouterror_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs42_layouterror_data = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pnfs_layout_segment = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs42_layouterror_data* (%struct.pnfs_layout_segment*, i32)* @nfs42_alloc_layouterror_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs42_layouterror_data* @nfs42_alloc_layouterror_data(%struct.pnfs_layout_segment* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs42_layouterror_data*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs42_layouterror_data*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %9 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.nfs42_layouterror_data* @kzalloc(i32 24, i32 %13)
  store %struct.nfs42_layouterror_data* %14, %struct.nfs42_layouterror_data** %6, align 8
  %15 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %16 = icmp ne %struct.nfs42_layouterror_data* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i64 @nfs_igrab_and_active(%struct.inode* %18)
  %20 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %21 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %23 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %19, i64* %24, align 8
  %25 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %26 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %17
  %30 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %31 = call i64 @pnfs_get_lseg(%struct.pnfs_layout_segment* %30)
  %32 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %33 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %35 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  store %struct.nfs42_layouterror_data* %39, %struct.nfs42_layouterror_data** %3, align 8
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %42 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @nfs_iput_and_deactive(i64 %43)
  br label %45

45:                                               ; preds = %40, %17
  %46 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %6, align 8
  %47 = call i32 @kfree(%struct.nfs42_layouterror_data* %46)
  br label %48

48:                                               ; preds = %45, %2
  store %struct.nfs42_layouterror_data* null, %struct.nfs42_layouterror_data** %3, align 8
  br label %49

49:                                               ; preds = %48, %38
  %50 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %3, align 8
  ret %struct.nfs42_layouterror_data* %50
}

declare dso_local %struct.nfs42_layouterror_data* @kzalloc(i32, i32) #1

declare dso_local i64 @nfs_igrab_and_active(%struct.inode*) #1

declare dso_local i64 @pnfs_get_lseg(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @nfs_iput_and_deactive(i64) #1

declare dso_local i32 @kfree(%struct.nfs42_layouterror_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

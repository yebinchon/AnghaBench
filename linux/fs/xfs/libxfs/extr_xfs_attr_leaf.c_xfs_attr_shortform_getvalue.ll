; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_getvalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xfs_attr_shortform = type { %struct.TYPE_8__, %struct.xfs_attr_sf_entry* }
%struct.TYPE_8__ = type { i32 }
%struct.xfs_attr_sf_entry = type { i64, i32, i32*, i32 }

@XFS_IFINLINE = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_getvalue(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_attr_shortform*, align 8
  %5 = alloca %struct.xfs_attr_sf_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %7 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFS_IFINLINE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.xfs_attr_shortform*
  store %struct.xfs_attr_shortform* %26, %struct.xfs_attr_shortform** %4, align 8
  %27 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %27, i32 0, i32 1
  %29 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %28, align 8
  %30 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %29, i64 0
  store %struct.xfs_attr_sf_entry* %30, %struct.xfs_attr_sf_entry** %5, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %83, %1
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %31
  %39 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %83

47:                                               ; preds = %38
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @memcmp(i32 %50, i32* %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %83

60:                                               ; preds = %47
  %61 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %62 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @xfs_attr_namesp_match(i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %83

70:                                               ; preds = %60
  %71 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %72 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %76 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %80 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @xfs_attr_copy_value(%struct.xfs_da_args* %71, i32* %78, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %91

83:                                               ; preds = %69, %59, %46
  %84 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %85 = call %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry* %84)
  store %struct.xfs_attr_sf_entry* %85, %struct.xfs_attr_sf_entry** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %31

88:                                               ; preds = %31
  %89 = load i32, i32* @ENOATTR, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %70
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @xfs_attr_namesp_match(i32, i32) #1

declare dso_local i32 @xfs_attr_copy_value(%struct.xfs_da_args*, i32*, i32) #1

declare dso_local %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.xfs_efi_log_item = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.xfs_efd_log_item = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_8__ = type { i32 }

@XFS_EFI_RECOVERED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_RMAP_OINFO_ANY_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_efi_recover(%struct.xfs_mount* %0, %struct.xfs_efi_log_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_efi_log_item*, align 8
  %6 = alloca %struct.xfs_efd_log_item*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_efi_log_item* %1, %struct.xfs_efi_log_item** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @XFS_EFI_RECOVERED, align 4
  %13 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %75, %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %20
  %28 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %10, align 8
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %36, i32 %39)
  %41 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %35, i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %27
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %50, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %61 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %59, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %56, %49, %44, %27
  %66 = load i32, i32* @XFS_EFI_RECOVERED, align 4
  %67 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %68 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %71 = call i32 @xfs_efi_release(%struct.xfs_efi_log_item* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %139

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %20

78:                                               ; preds = %20
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %80 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %81 = call %struct.TYPE_8__* @M_RES(%struct.xfs_mount* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %79, i32* %82, i32 0, i32 0, i32 0, %struct.xfs_trans** %7)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %139

88:                                               ; preds = %78
  %89 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %90 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %91 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %92 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.xfs_efd_log_item* @xfs_trans_get_efd(%struct.xfs_trans* %89, %struct.xfs_efi_log_item* %90, i32 %94)
  store %struct.xfs_efd_log_item* %95, %struct.xfs_efd_log_item** %6, align 8
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %124, %88
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %99 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %96
  %104 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %105 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %10, align 8
  %111 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %112 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %6, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @xfs_trans_free_extent(%struct.xfs_trans* %111, %struct.xfs_efd_log_item* %112, i32 %115, i64 %118, i32* @XFS_RMAP_OINFO_ANY_OWNER, i32 0)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  br label %135

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %96

127:                                              ; preds = %96
  %128 = load i32, i32* @XFS_EFI_RECOVERED, align 4
  %129 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %129, i32 0, i32 0
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  %132 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %133 = call i32 @xfs_trans_commit(%struct.xfs_trans* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %139

135:                                              ; preds = %122
  %136 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %137 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %127, %86, %65
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xfs_efi_release(%struct.xfs_efi_log_item*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_8__* @M_RES(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_efd_log_item* @xfs_trans_get_efd(%struct.xfs_trans*, %struct.xfs_efi_log_item*, i32) #1

declare dso_local i32 @xfs_trans_free_extent(%struct.xfs_trans*, %struct.xfs_efd_log_item*, i32, i64, i32*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

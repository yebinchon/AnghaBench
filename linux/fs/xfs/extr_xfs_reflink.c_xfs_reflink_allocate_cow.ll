; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_allocate_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_allocate_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4
@XFS_BMAPI_COWFORK = common dso_local global i32 0, align 4
@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_allocate_cow(%struct.xfs_inode* %0, %struct.xfs_bmbt_irec* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_bmbt_irec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfs_trans*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %12, align 8
  %24 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %25 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %28 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %20, align 8
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %31 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %32 = call i32 @xfs_isilocked(%struct.xfs_inode* %30, i32 %31)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %5
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %40 = call i32 @xfs_is_reflink_inode(%struct.xfs_inode* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %46 = call i32 @xfs_ifork_init_cow(%struct.xfs_inode* %45)
  br label %47

47:                                               ; preds = %38, %5
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %49 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @xfs_find_trim_cow_extent(%struct.xfs_inode* %48, %struct.xfs_bmbt_irec* %49, i32* %50, i32* %18)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %6, align 4
  br label %199

60:                                               ; preds = %54
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %167

64:                                               ; preds = %60
  %65 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %66 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %69 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %72 = call i32 @xfs_get_cowextsz_hint(%struct.xfs_inode* %71)
  %73 = call i32 @xfs_aligned_fsb_count(i32 %67, i32 %70, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i64 @XFS_DIOSTRAT_SPACE_RES(%struct.xfs_mount* %74, i32 %75)
  store i64 %76, i64* %20, align 8
  %77 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @xfs_iunlock(%struct.xfs_inode* %77, i32 %79)
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %82 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %83 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %81, i32* %84, i64 %85, i32 0, i32 0, %struct.xfs_trans** %15)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xfs_ilock(%struct.xfs_inode* %89, i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %64
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %6, align 4
  br label %199

97:                                               ; preds = %64
  %98 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %99 = call i32 @xfs_qm_dqattach_locked(%struct.xfs_inode* %98, i32 0)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %195

103:                                              ; preds = %97
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %105 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @xfs_find_trim_cow_extent(%struct.xfs_inode* %104, %struct.xfs_bmbt_irec* %105, i32* %106, i32* %18)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %103
  br label %195

115:                                              ; preds = %110
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %120 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %119)
  br label %167

121:                                              ; preds = %115
  %122 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %123 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  %126 = call i32 @xfs_trans_reserve_quota_nblks(%struct.xfs_trans* %122, %struct.xfs_inode* %123, i64 %124, i32 0, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %195

130:                                              ; preds = %121
  %131 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %132 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %133 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %131, %struct.xfs_inode* %132, i32 0)
  store i32 1, i32* %16, align 4
  %134 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %135 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %136 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %137 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %140 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @XFS_BMAPI_COWFORK, align 4
  %143 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  %144 = or i32 %142, %143
  %145 = load i64, i64* %20, align 8
  %146 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %147 = call i32 @xfs_bmapi_write(%struct.xfs_trans* %134, %struct.xfs_inode* %135, i32 %138, i32 %141, i32 %144, i64 %145, %struct.xfs_bmbt_irec* %146, i32* %16)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  br label %189

151:                                              ; preds = %130
  %152 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %153 = call i32 @xfs_inode_set_cowblocks_tag(%struct.xfs_inode* %152)
  %154 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %155 = call i32 @xfs_trans_commit(%struct.xfs_trans* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %6, align 4
  br label %199

160:                                              ; preds = %151
  %161 = load i32, i32* %16, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* @ENOSPC, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  br label %199

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %118, %63
  %168 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %168, i32 %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %176 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @XFS_EXT_NORM, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174, %167
  store i32 0, i32* %6, align 4
  br label %199

181:                                              ; preds = %174
  %182 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %183 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %184 = call i32 @trace_xfs_reflink_convert_cow(%struct.xfs_inode* %182, %struct.xfs_bmbt_irec* %183)
  %185 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @xfs_reflink_convert_cow_locked(%struct.xfs_inode* %185, i32 %186, i32 %187)
  store i32 %188, i32* %6, align 4
  br label %199

189:                                              ; preds = %150
  %190 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %191 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %192 = load i64, i64* %20, align 8
  %193 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  %194 = call i32 @xfs_trans_unreserve_quota_nblks(%struct.xfs_trans* %190, %struct.xfs_inode* %191, i64 %192, i32 0, i32 %193)
  br label %195

195:                                              ; preds = %189, %129, %114, %102
  %196 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %197 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %196)
  %198 = load i32, i32* %17, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %195, %181, %180, %163, %158, %95, %58
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ifork_init_cow(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_find_trim_cow_extent(%struct.xfs_inode*, %struct.xfs_bmbt_irec*, i32*, i32*) #1

declare dso_local i32 @xfs_aligned_fsb_count(i32, i32, i32) #1

declare dso_local i32 @xfs_get_cowextsz_hint(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_DIOSTRAT_SPACE_RES(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i64, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_qm_dqattach_locked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_reserve_quota_nblks(%struct.xfs_trans*, %struct.xfs_inode*, i64, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmapi_write(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, i32, i64, %struct.xfs_bmbt_irec*, i32*) #1

declare dso_local i32 @xfs_inode_set_cowblocks_tag(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i32, i32) #1

declare dso_local i32 @trace_xfs_reflink_convert_cow(%struct.xfs_inode*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_reflink_convert_cow_locked(%struct.xfs_inode*, i32, i32) #1

declare dso_local i32 @xfs_trans_unreserve_quota_nblks(%struct.xfs_trans*, %struct.xfs_inode*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

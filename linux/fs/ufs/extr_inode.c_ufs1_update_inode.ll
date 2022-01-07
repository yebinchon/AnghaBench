; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs1_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs1_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, i32, %struct.super_block* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ufs_inode = type { %struct.TYPE_24__, %struct.TYPE_23__, i8*, i8*, i8*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i8*, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_21__ = type { i64, i8* }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_17__ = type { i64, i8* }
%struct.ufs_inode_info = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32 }

@UFS_UID_MASK = common dso_local global i32 0, align 4
@UFS_UID_EFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ufs_inode*)* @ufs1_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs1_update_inode(%struct.inode* %0, %struct.ufs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ufs_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ufs_inode* %1, %struct.ufs_inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 8
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %10)
  store %struct.ufs_inode_info* %11, %struct.ufs_inode_info** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @cpu_to_fs16(%struct.super_block* %12, i32 %15)
  %17 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %17, i32 0, i32 10
  store i8* %16, i8** %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_fs16(%struct.super_block* %19, i32 %22)
  %24 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @i_uid_read(%struct.inode* %28)
  %30 = call i32 @ufs_set_inode_uid(%struct.super_block* %26, %struct.ufs_inode* %27, i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @i_gid_read(%struct.inode* %33)
  %35 = call i32 @ufs_set_inode_gid(%struct.super_block* %31, %struct.ufs_inode* %32, i32 %34)
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_fs64(%struct.super_block* %36, i32 %39)
  %41 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %42 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @cpu_to_fs32(%struct.super_block* %43, i32 %47)
  %49 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %50 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %53 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_fs32(%struct.super_block* %55, i32 %59)
  %61 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %62 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %65 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @cpu_to_fs32(%struct.super_block* %67, i32 %71)
  %73 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %74 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %77 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_fs32(%struct.super_block* %79, i32 %82)
  %84 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %85 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %88 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @cpu_to_fs32(%struct.super_block* %86, i32 %89)
  %91 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %92 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_fs32(%struct.super_block* %93, i32 %96)
  %98 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %99 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = call %struct.TYPE_15__* @UFS_SB(%struct.super_block* %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UFS_UID_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @UFS_UID_EFT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %2
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %111 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_fs32(%struct.super_block* %109, i32 %112)
  %114 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %115 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store i8* %113, i8** %117, align 8
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %120 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @cpu_to_fs32(%struct.super_block* %118, i32 %121)
  %123 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %124 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %108, %2
  %128 = load %struct.inode*, %struct.inode** %3, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @S_ISCHR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @S_ISBLK(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %133, %127
  %140 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %141 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %147 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %145, i32* %151, align 4
  br label %176

152:                                              ; preds = %133
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %159 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %162 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @memcpy(%struct.TYPE_14__* %160, i32* %164, i32 8)
  br label %175

166:                                              ; preds = %152
  %167 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %168 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %171 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @memcpy(%struct.TYPE_14__* %169, i32* %173, i32 8)
  br label %175

175:                                              ; preds = %166, %157
  br label %176

176:                                              ; preds = %175, %139
  %177 = load %struct.inode*, %struct.inode** %3, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %183 = call i32 @memset(%struct.ufs_inode* %182, i32 0, i32 128)
  br label %184

184:                                              ; preds = %181, %176
  ret void
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_set_inode_uid(%struct.super_block*, %struct.ufs_inode*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @ufs_set_inode_gid(%struct.super_block*, %struct.ufs_inode*, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_15__* @UFS_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ufs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

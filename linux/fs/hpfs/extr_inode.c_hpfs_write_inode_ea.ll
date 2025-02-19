; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_write_inode_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_write_inode_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.fnode = type { i32 }
%struct.hpfs_inode_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fnode*)* @hpfs_write_inode_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_write_inode_ea(%struct.inode* %0, %struct.fnode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fnode*, align 8
  %5 = alloca %struct.hpfs_inode_info*, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fnode* %1, %struct.fnode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %7)
  store %struct.hpfs_inode_info* %8, %struct.hpfs_inode_info** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @hpfs_sb(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %180

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_2__* @hpfs_sb(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @uid_eq(i32 %19, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28, %16
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @i_uid_read(%struct.inode* %34)
  %36 = call i64 @cpu_to_le32(i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = load %struct.fnode*, %struct.fnode** %4, align 8
  %39 = bitcast i64* %6 to i8*
  %40 = call i32 @hpfs_set_ea(%struct.inode* %37, %struct.fnode* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %39, i32 2)
  %41 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %42 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_2__* @hpfs_sb(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gid_eq(i32 %46, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %57 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55, %43
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call i32 @i_gid_read(%struct.inode* %61)
  %63 = call i64 @cpu_to_le32(i32 %62)
  store i64 %63, i64* %6, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = load %struct.fnode*, %struct.fnode** %4, align 8
  %66 = bitcast i64* %6 to i8*
  %67 = call i32 @hpfs_set_ea(%struct.inode* %64, %struct.fnode* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 2)
  %68 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %69 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @S_ISLNK(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %157, label %76

76:                                               ; preds = %70
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_2__* @hpfs_sb(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 73
  %93 = xor i32 %92, -1
  %94 = and i32 %85, %93
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISDIR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %76
  %101 = load i32, i32* @S_IFDIR, align 4
  br label %104

102:                                              ; preds = %76
  %103 = load i32, i32* @S_IFREG, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = or i32 %94, %105
  %107 = icmp ne i32 %79, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_2__* @hpfs_sb(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %3, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @S_ISDIR(i32 %120)
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 146, i32 219
  %125 = xor i32 %124, -1
  %126 = and i32 %117, %125
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @S_ISDIR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %108
  %133 = load i32, i32* @S_IFDIR, align 4
  br label %136

134:                                              ; preds = %108
  %135 = load i32, i32* @S_IFREG, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = or i32 %126, %137
  %139 = icmp ne i32 %111, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %136, %104
  %141 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %142 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140, %136
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @cpu_to_le32(i32 %148)
  store i64 %149, i64* %6, align 8
  %150 = load %struct.inode*, %struct.inode** %3, align 8
  %151 = load %struct.fnode*, %struct.fnode** %4, align 8
  %152 = bitcast i64* %6 to i8*
  %153 = call i32 @hpfs_set_ea(%struct.inode* %150, %struct.fnode* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %152, i32 2)
  %154 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %155 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %154, i32 0, i32 2
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %145, %140
  br label %157

157:                                              ; preds = %156, %70
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @S_ISBLK(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.inode*, %struct.inode** %3, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @S_ISCHR(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %163, %157
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @new_encode_dev(i32 %172)
  %174 = call i64 @cpu_to_le32(i32 %173)
  store i64 %174, i64* %6, align 8
  %175 = load %struct.inode*, %struct.inode** %3, align 8
  %176 = load %struct.fnode*, %struct.fnode** %4, align 8
  %177 = bitcast i64* %6 to i8*
  %178 = call i32 @hpfs_set_ea(%struct.inode* %175, %struct.fnode* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %177, i32 4)
  br label %179

179:                                              ; preds = %169, %163
  br label %180

180:                                              ; preds = %179, %2
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @hpfs_set_ea(%struct.inode*, %struct.fnode*, i8*, i8*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

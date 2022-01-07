; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_fnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_fnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnode = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.extended_attribute = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"fnode\00", align 1
@FNODE_RD_AHEAD = common dso_local global i32 0, align 4
@FNODE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"bad magic on fnode %08lx\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad number of nodes in fnode %08lx\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bad first_free pointer in fnode %08lx\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bad EA in fnode %08lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.fnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca %struct.extended_attribute*, align 8
  %10 = alloca %struct.extended_attribute*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.TYPE_3__* @hpfs_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @hpfs_chk_sectors(%struct.super_block* %17, i64 %18, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.fnode* null, %struct.fnode** %4, align 8
  br label %165

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %27 = load i32, i32* @FNODE_RD_AHEAD, align 4
  %28 = call %struct.fnode* @hpfs_map_sector(%struct.super_block* %24, i64 %25, %struct.buffer_head** %26, i32 %27)
  store %struct.fnode* %28, %struct.fnode** %8, align 8
  %29 = icmp ne %struct.fnode* %28, null
  br i1 %29, label %30, label %159

30:                                               ; preds = %23
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call %struct.TYPE_3__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %158

36:                                               ; preds = %30
  %37 = load %struct.fnode*, %struct.fnode** %8, align 8
  %38 = getelementptr inbounds %struct.fnode, %struct.fnode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = load i64, i64* @FNODE_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %161

47:                                               ; preds = %36
  %48 = load %struct.fnode*, %struct.fnode** %8, align 8
  %49 = call i32 @fnode_is_dir(%struct.fnode* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %47
  %52 = load %struct.fnode*, %struct.fnode** %8, align 8
  %53 = getelementptr inbounds %struct.fnode, %struct.fnode* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fnode*, %struct.fnode** %8, align 8
  %57 = getelementptr inbounds %struct.fnode, %struct.fnode* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = add i32 %55, %60
  %62 = load %struct.fnode*, %struct.fnode** %8, align 8
  %63 = getelementptr inbounds %struct.fnode, %struct.fnode* %62, i32 0, i32 3
  %64 = call i64 @bp_internal(%struct.TYPE_4__* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 12, i32 8
  %68 = icmp ne i32 %61, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  br label %161

73:                                               ; preds = %51
  %74 = load %struct.fnode*, %struct.fnode** %8, align 8
  %75 = getelementptr inbounds %struct.fnode, %struct.fnode* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load %struct.fnode*, %struct.fnode** %8, align 8
  %80 = getelementptr inbounds %struct.fnode, %struct.fnode* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fnode*, %struct.fnode** %8, align 8
  %84 = getelementptr inbounds %struct.fnode, %struct.fnode* %83, i32 0, i32 3
  %85 = call i64 @bp_internal(%struct.TYPE_4__* %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 8, i32 12
  %89 = mul nsw i32 %82, %88
  %90 = add nsw i32 8, %89
  %91 = icmp ne i32 %78, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %73
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %161

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %47
  %98 = load %struct.fnode*, %struct.fnode** %8, align 8
  %99 = getelementptr inbounds %struct.fnode, %struct.fnode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %97
  %104 = load %struct.fnode*, %struct.fnode** %8, align 8
  %105 = getelementptr inbounds %struct.fnode, %struct.fnode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = icmp slt i32 %107, 196
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load %struct.fnode*, %struct.fnode** %8, align 8
  %111 = getelementptr inbounds %struct.fnode, %struct.fnode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = load %struct.fnode*, %struct.fnode** %8, align 8
  %115 = getelementptr inbounds %struct.fnode, %struct.fnode* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = add nsw i32 %113, %117
  %119 = load %struct.fnode*, %struct.fnode** %8, align 8
  %120 = getelementptr inbounds %struct.fnode, %struct.fnode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = add nsw i32 %118, %122
  %124 = icmp sgt i32 %123, 512
  br i1 %124, label %125, label %137

125:                                              ; preds = %109, %103
  %126 = load %struct.super_block*, %struct.super_block** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.fnode*, %struct.fnode** %8, align 8
  %129 = getelementptr inbounds %struct.fnode, %struct.fnode* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le16_to_cpu(i32 %130)
  %132 = load %struct.fnode*, %struct.fnode** %8, align 8
  %133 = getelementptr inbounds %struct.fnode, %struct.fnode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @le16_to_cpu(i32 %134)
  %136 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %126, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %127, i32 %131, i32 %135)
  br label %161

137:                                              ; preds = %109, %97
  %138 = load %struct.fnode*, %struct.fnode** %8, align 8
  %139 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %138)
  store %struct.extended_attribute* %139, %struct.extended_attribute** %9, align 8
  %140 = load %struct.fnode*, %struct.fnode** %8, align 8
  %141 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %140)
  store %struct.extended_attribute* %141, %struct.extended_attribute** %10, align 8
  br label %142

142:                                              ; preds = %154, %137
  %143 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %144 = load %struct.extended_attribute*, %struct.extended_attribute** %10, align 8
  %145 = icmp ne %struct.extended_attribute* %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %148 = load %struct.extended_attribute*, %struct.extended_attribute** %10, align 8
  %149 = icmp ugt %struct.extended_attribute* %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.super_block*, %struct.super_block** %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %152)
  br label %161

154:                                              ; preds = %146
  %155 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %156 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %155)
  store %struct.extended_attribute* %156, %struct.extended_attribute** %9, align 8
  br label %142

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %30
  br label %159

159:                                              ; preds = %158, %23
  %160 = load %struct.fnode*, %struct.fnode** %8, align 8
  store %struct.fnode* %160, %struct.fnode** %4, align 8
  br label %165

161:                                              ; preds = %150, %125, %92, %69, %43
  %162 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %162, align 8
  %164 = call i32 @brelse(%struct.buffer_head* %163)
  store %struct.fnode* null, %struct.fnode** %4, align 8
  br label %165

165:                                              ; preds = %161, %159, %21
  %166 = load %struct.fnode*, %struct.fnode** %4, align 8
  ret %struct.fnode* %166
}

declare dso_local %struct.TYPE_3__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i64, i32, i8*) #1

declare dso_local %struct.fnode* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local i32 @fnode_is_dir(%struct.fnode*) #1

declare dso_local i64 @bp_internal(%struct.TYPE_4__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

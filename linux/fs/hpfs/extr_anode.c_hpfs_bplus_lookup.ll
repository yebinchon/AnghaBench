; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_bplus_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_bplus_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.bplus_header = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.anode = type { %struct.bplus_header }
%struct.hpfs_inode_info = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"hpfs_bplus_lookup\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sector %08x not found in internal anode %08x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"sector %08x not found in external anode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_bplus_lookup(%struct.super_block* %0, %struct.inode* %1, %struct.bplus_header* %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.bplus_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.anode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hpfs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.bplus_header* %2, %struct.bplus_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %73, %5
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @hpfs_stop_cycles(%struct.super_block* %25, i32 %26, i32* %15, i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %226

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %33 = call i64 @bp_internal(%struct.bplus_header* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %39 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %36
  %43 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %44 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %42
  %56 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %57 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = call i32 @brelse(%struct.buffer_head* %66)
  %68 = load %struct.super_block*, %struct.super_block** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %68, i32 %69, %struct.buffer_head** %11)
  store %struct.anode* %70, %struct.anode** %13, align 8
  %71 = icmp ne %struct.anode* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %226

73:                                               ; preds = %55
  %74 = load %struct.anode*, %struct.anode** %13, align 8
  %75 = getelementptr inbounds %struct.anode, %struct.anode* %74, i32 0, i32 0
  store %struct.bplus_header* %75, %struct.bplus_header** %9, align 8
  br label %18

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %36

80:                                               ; preds = %36
  %81 = load %struct.super_block*, %struct.super_block** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @hpfs_error(%struct.super_block* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  store i32 -1, i32* %6, align 4
  br label %226

87:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %216, %87
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %91 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %219

94:                                               ; preds = %88
  %95 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %96 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = icmp ule i32 %104, %105
  br i1 %106, label %107, label %215

107:                                              ; preds = %94
  %108 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %109 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %119 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = add i32 %117, %127
  %129 = load i32, i32* %10, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %215

131:                                              ; preds = %107
  %132 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %133 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le32_to_cpu(i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %141, %142
  %144 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %145 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = sub i32 %143, %153
  store i32 %154, i32* %12, align 4
  %155 = load %struct.super_block*, %struct.super_block** %7, align 8
  %156 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %155)
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %131
  %161 = load %struct.super_block*, %struct.super_block** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i64 @hpfs_chk_sectors(%struct.super_block* %161, i32 %162, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %167 = call i32 @brelse(%struct.buffer_head* %166)
  store i32 -1, i32* %6, align 4
  br label %226

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %131
  %170 = load %struct.inode*, %struct.inode** %8, align 8
  %171 = icmp ne %struct.inode* %170, null
  br i1 %171, label %172, label %211

172:                                              ; preds = %169
  %173 = load %struct.inode*, %struct.inode** %8, align 8
  %174 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %173)
  store %struct.hpfs_inode_info* %174, %struct.hpfs_inode_info** %17, align 8
  %175 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %176 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le32_to_cpu(i32 %183)
  %185 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %186 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %188 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %198 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %200 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @le32_to_cpu(i32 %207)
  %209 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %210 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %172, %169
  %212 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %213 = call i32 @brelse(%struct.buffer_head* %212)
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %6, align 4
  br label %226

215:                                              ; preds = %107, %94
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %88

219:                                              ; preds = %88
  %220 = load %struct.super_block*, %struct.super_block** %7, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @hpfs_error(%struct.super_block* %220, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %225 = call i32 @brelse(%struct.buffer_head* %224)
  store i32 -1, i32* %6, align 4
  br label %226

226:                                              ; preds = %219, %211, %165, %80, %72, %29
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

declare dso_local i64 @bp_internal(%struct.bplus_header*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_remove_btree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_remove_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.bplus_header = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.anode = type { %struct.bplus_header, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"hpfs_remove_btree #1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"hpfs_remove_btree #2\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"reference to anode %08x not found in anode %08x (probably bad up pointer)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_remove_btree(%struct.super_block* %0, %struct.bplus_header* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.bplus_header*, align 8
  %5 = alloca %struct.bplus_header*, align 8
  %6 = alloca %struct.anode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.bplus_header* %1, %struct.bplus_header** %4, align 8
  %17 = load %struct.bplus_header*, %struct.bplus_header** %4, align 8
  store %struct.bplus_header* %17, %struct.bplus_header** %5, align 8
  store %struct.anode* null, %struct.anode** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %167, %2
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %58, %18
  %20 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %21 = call i64 @bp_internal(%struct.bplus_header* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %25 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %38 = call i32 @brelse(%struct.buffer_head* %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @hpfs_stop_cycles(%struct.super_block* %46, i64 %47, i32* %15, i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %189

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %53, i64 %54, %struct.buffer_head** %9)
  store %struct.anode* %55, %struct.anode** %6, align 8
  %56 = icmp ne %struct.anode* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %189

58:                                               ; preds = %52
  %59 = load %struct.anode*, %struct.anode** %6, align 8
  %60 = getelementptr inbounds %struct.anode, %struct.anode* %59, i32 0, i32 0
  store %struct.bplus_header* %60, %struct.bplus_header** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

63:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %67 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.super_block*, %struct.super_block** %3, align 8
  %72 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %73 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %83 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = call i32 @hpfs_free_sectors(%struct.super_block* %71, i64 %81, i32 %92)
  br label %94

94:                                               ; preds = %70
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %64

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %168, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %189

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  %105 = load %struct.super_block*, %struct.super_block** %3, align 8
  %106 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.super_block*, %struct.super_block** %3, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @hpfs_stop_cycles(%struct.super_block* %111, i64 %112, i32* %13, i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %189

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %102
  %118 = load %struct.super_block*, %struct.super_block** %3, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @hpfs_free_sectors(%struct.super_block* %118, i64 %119, i32 1)
  %121 = load i64, i64* %7, align 8
  store i64 %121, i64* %8, align 8
  %122 = load %struct.anode*, %struct.anode** %6, align 8
  %123 = getelementptr inbounds %struct.anode, %struct.anode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @le32_to_cpu(i32 %124)
  store i64 %125, i64* %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %117
  %130 = load %struct.super_block*, %struct.super_block** %3, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %130, i64 %131, %struct.buffer_head** %9)
  store %struct.anode* %132, %struct.anode** %6, align 8
  %133 = icmp ne %struct.anode* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %189

135:                                              ; preds = %129
  %136 = load %struct.anode*, %struct.anode** %6, align 8
  %137 = getelementptr inbounds %struct.anode, %struct.anode* %136, i32 0, i32 0
  store %struct.bplus_header* %137, %struct.bplus_header** %5, align 8
  br label %140

138:                                              ; preds = %117
  %139 = load %struct.bplus_header*, %struct.bplus_header** %4, align 8
  store %struct.bplus_header* %139, %struct.bplus_header** %5, align 8
  br label %140

140:                                              ; preds = %138, %135
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %170, %140
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %144 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %141
  %148 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %149 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @le32_to_cpu(i32 %156)
  %158 = load i64, i64* %8, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %147
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  %163 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %164 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %18

168:                                              ; preds = %160
  br label %98

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %141

173:                                              ; preds = %141
  %174 = load %struct.super_block*, %struct.super_block** %3, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i64, i64* %7, align 8
  br label %181

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i64 [ %179, %178 ], [ -1, %180 ]
  %183 = call i32 @hpfs_error(%struct.super_block* %174, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %175, i64 %182)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  br label %189

189:                                              ; preds = %50, %57, %101, %115, %134, %186, %181
  ret void
}

declare dso_local i64 @bp_internal(%struct.bplus_header*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i64, i32*, i32*, i8*) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i64, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

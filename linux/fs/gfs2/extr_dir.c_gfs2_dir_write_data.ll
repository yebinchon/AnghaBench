; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8*, i64, i32)* @gfs2_dir_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_write_data(%struct.gfs2_inode* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 1
  %23 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_7__* %22)
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %10, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %226

27:                                               ; preds = %4
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %29 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %37 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %36)
  %38 = icmp sle i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @gfs2_dir_write_stuffed(%struct.gfs2_inode* %40, i8* %41, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %226

46:                                               ; preds = %31, %27
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %49 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %48)
  %50 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %226

55:                                               ; preds = %46
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %57 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %61 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %60, i32* null)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %5, align 4
  br label %226

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @do_div(i64 %69, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %141, %67
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %171

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %87 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub i32 %89, %90
  %92 = icmp ugt i32 %85, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %95 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %93, %81
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  store i32 1, i32* %18, align 4
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 1
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @gfs2_extent_map(%struct.TYPE_7__* %105, i64 %106, i32* %18, i64* %13, i64* %14)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %220

111:                                              ; preds = %103
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %17, align 4
  %114 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %220

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %100
  %121 = load i32, i32* %19, align 4
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %123 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126, %120
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode* %130, i64 %131, %struct.buffer_head** %20)
  store i32 %132, i32* %17, align 4
  br label %137

133:                                              ; preds = %126
  %134 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @gfs2_dir_get_existing_buffer(%struct.gfs2_inode* %134, i64 %135, %struct.buffer_head** %20)
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %220

141:                                              ; preds = %137
  %142 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %143 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %146 = call i32 @gfs2_trans_add_meta(i32 %144, %struct.buffer_head* %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @memcpy(i64 %152, i8* %153, i32 %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %157 = call i32 @brelse(%struct.buffer_head* %156)
  %158 = load i32, i32* %19, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %7, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %16, align 4
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %12, align 8
  %167 = load i64, i64* %13, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* %14, align 8
  store i32 4, i32* %15, align 4
  br label %77

171:                                              ; preds = %77
  br label %172

172:                                              ; preds = %223, %171
  %173 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %174 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %173, %struct.buffer_head** %11)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %5, align 4
  br label %226

179:                                              ; preds = %172
  %180 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %181 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = icmp slt i64 %183, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %179
  %190 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %191 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %190, i32 0, i32 1
  %192 = load i64, i64* %8, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = call i32 @i_size_write(%struct.TYPE_7__* %191, i64 %195)
  br label %197

197:                                              ; preds = %189, %179
  %198 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %199 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %198, i32 0, i32 1
  %200 = call i32 @current_time(%struct.TYPE_7__* %199)
  %201 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %202 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 8
  %204 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %205 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 %200, i32* %206, align 4
  %207 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %208 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %211 = call i32 @gfs2_trans_add_meta(i32 %209, %struct.buffer_head* %210)
  %212 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %213 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %214 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %212, i64 %215)
  %217 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %218 = call i32 @brelse(%struct.buffer_head* %217)
  %219 = load i32, i32* %16, align 4
  store i32 %219, i32* %5, align 4
  br label %226

220:                                              ; preds = %140, %118, %110
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  br label %172

224:                                              ; preds = %220
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %224, %197, %177, %64, %52, %39, %26
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_7__*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_write_stuffed(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @gfs2_extent_map(%struct.TYPE_7__*, i64, i32*, i64*, i64*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i64) #1

declare dso_local i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dir_get_existing_buffer(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @i_size_write(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @current_time(%struct.TYPE_7__*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

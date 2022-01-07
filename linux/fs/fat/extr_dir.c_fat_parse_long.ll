; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_parse_long.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_parse_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i64*, i64 }
%struct.msdos_dir_slot = type { i8, i8, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PARSE_INVALID = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@ATTR_EXT = common dso_local global i64 0, align 8
@PARSE_NOT_LONGNAME = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i64 0, align 8
@ATTR_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**, i64**, i8*)* @fat_parse_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_parse_long(%struct.inode* %0, i32* %1, %struct.buffer_head** %2, %struct.msdos_dir_entry** %3, i64** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.msdos_dir_entry**, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.msdos_dir_slot*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %10, align 8
  store %struct.msdos_dir_entry** %3, %struct.msdos_dir_entry*** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i64**, i64*** %12, align 8
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = call i64* (...) @__getname()
  %25 = load i64**, i64*** %12, align 8
  store i64* %24, i64** %25, align 8
  %26 = load i64**, i64*** %12, align 8
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %213

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %6
  br label %37

37:                                               ; preds = %181, %161, %152, %36
  %38 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %39 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %38, align 8
  %40 = bitcast %struct.msdos_dir_entry* %39 to %struct.msdos_dir_slot*
  store %struct.msdos_dir_slot* %40, %struct.msdos_dir_slot** %14, align 8
  %41 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %42 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  store i8 %43, i8* %15, align 1
  %44 = load i8, i8* %15, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @PARSE_INVALID, align 4
  store i32 %49, i32* %7, align 4
  br label %213

50:                                               ; preds = %37
  %51 = load i8, i8* %15, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, -65
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %17, align 1
  %55 = load i8, i8* %17, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sgt i32 %56, 20
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i8, i8* %17, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* @PARSE_INVALID, align 4
  store i32 %62, i32* %7, align 4
  br label %213

63:                                               ; preds = %58
  %64 = load i8, i8* %17, align 1
  %65 = load i8*, i8** %13, align 8
  store i8 %64, i8* %65, align 1
  %66 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %67 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %18, align 1
  %69 = load i8, i8* %17, align 1
  store i8 %69, i8* %16, align 1
  br label %70

70:                                               ; preds = %63, %162
  %71 = load i8, i8* %16, align 1
  %72 = add i8 %71, -1
  store i8 %72, i8* %16, align 1
  %73 = load i8, i8* %16, align 1
  %74 = zext i8 %73 to i32
  %75 = mul nsw i32 %74, 13
  store i32 %75, i32* %19, align 4
  %76 = load i64**, i64*** %12, align 8
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %82 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fat16_towchar(i64* %80, i32 %83, i32 5)
  %85 = load i64**, i64*** %12, align 8
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = getelementptr inbounds i64, i64* %89, i64 5
  %91 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %92 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fat16_towchar(i64* %90, i32 %93, i32 6)
  %95 = load i64**, i64*** %12, align 8
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %19, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = getelementptr inbounds i64, i64* %99, i64 11
  %101 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %102 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @fat16_towchar(i64* %100, i32 %103, i32 2)
  %105 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %106 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 64
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %70
  %112 = load i64**, i64*** %12, align 8
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 13
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %111, %70
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %122 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %123 = call i64 @fat_get_entry(%struct.inode* %119, i32* %120, %struct.buffer_head** %121, %struct.msdos_dir_entry** %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @PARSE_EOF, align 4
  store i32 %126, i32* %7, align 4
  br label %213

127:                                              ; preds = %118
  %128 = load i8, i8* %16, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %163

132:                                              ; preds = %127
  %133 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %134 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %133, align 8
  %135 = bitcast %struct.msdos_dir_entry* %134 to %struct.msdos_dir_slot*
  store %struct.msdos_dir_slot* %135, %struct.msdos_dir_slot** %14, align 8
  %136 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %137 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ATTR_EXT, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @PARSE_NOT_LONGNAME, align 4
  store i32 %142, i32* %7, align 4
  br label %213

143:                                              ; preds = %132
  %144 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %145 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, -65
  %149 = load i8, i8* %16, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %37

153:                                              ; preds = %143
  %154 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %155 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %154, i32 0, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %18, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %37

162:                                              ; preds = %153
  br label %70

163:                                              ; preds = %131
  %164 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %165 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %164, align 8
  %166 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DELETED_FLAG, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* @PARSE_INVALID, align 4
  store i32 %173, i32* %7, align 4
  br label %213

174:                                              ; preds = %163
  %175 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %176 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %175, align 8
  %177 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ATTR_EXT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %37

182:                                              ; preds = %174
  %183 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %184 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %183, align 8
  %185 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = call i64 @IS_FREE(i64* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %182
  %190 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %191 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %190, align 8
  %192 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @ATTR_VOLUME, align 4
  %195 = sext i32 %194 to i64
  %196 = and i64 %193, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189, %182
  %199 = load i32, i32* @PARSE_INVALID, align 4
  store i32 %199, i32* %7, align 4
  br label %213

200:                                              ; preds = %189
  %201 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %11, align 8
  %202 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %201, align 8
  %203 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = call zeroext i8 @fat_checksum(i64* %204)
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %18, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp ne i32 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i8*, i8** %13, align 8
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %210, %200
  store i32 0, i32* %7, align 4
  br label %213

213:                                              ; preds = %212, %198, %172, %141, %125, %61, %48, %29
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i64* @__getname(...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fat16_towchar(i64*, i32, i32) #1

declare dso_local i64 @fat_get_entry(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i64 @IS_FREE(i64*) #1

declare dso_local zeroext i8 @fat_checksum(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

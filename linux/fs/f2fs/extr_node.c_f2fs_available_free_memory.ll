; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_available_free_memory.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_available_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.f2fs_nm_info = type { i32*, i64, i32 }
%struct.sysinfo = type { i32, i64 }

@FREE_NIDS = common dso_local global i32 0, align 4
@FREE_NID = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NAT_ENTRIES = common dso_local global i32 0, align 4
@DIRTY_DENTS = common dso_local global i32 0, align 4
@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@INO_ENTRIES = common dso_local global i32 0, align 4
@MAX_INO_ENTRY = common dso_local global i32 0, align 4
@EXTENT_CACHE = common dso_local global i32 0, align 4
@INMEM_PAGES = common dso_local global i32 0, align 4
@F2FS_INMEM_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_nm_info*, align 8
  %7 = alloca %struct.sysinfo, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %12)
  store %struct.f2fs_nm_info* %13, %struct.f2fs_nm_info** %6, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @si_meminfo(%struct.sysinfo* %7)
  %15 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %7, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %17, %19
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @FREE_NIDS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %26 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @FREE_NID, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %32, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %39 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %37, %40
  %42 = udiv i64 %41, 100
  %43 = lshr i64 %42, 2
  %44 = icmp ult i64 %36, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %204

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NAT_ENTRIES, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %52 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %55, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %62 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %60, %63
  %65 = udiv i64 %64, 100
  %66 = lshr i64 %65, 2
  %67 = icmp ult i64 %59, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %70 = call i64 @excess_cached_nats(%struct.f2fs_sb_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %50
  br label %203

74:                                               ; preds = %46
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DIRTY_DENTS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %80 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %206

89:                                               ; preds = %78
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %91 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %92 = call i64 @get_pages(%struct.f2fs_sb_info* %90, i32 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %96 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 %94, %97
  %99 = udiv i64 %98, 100
  %100 = lshr i64 %99, 1
  %101 = icmp ult i64 %93, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %202

103:                                              ; preds = %74
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @INO_ENTRIES, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %125, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @MAX_INO_ENTRY, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %114 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %113, i32 0, i32 3
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %112
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %108

128:                                              ; preds = %108
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = load i64, i64* %9, align 8
  %131 = zext i32 %129 to i64
  %132 = lshr i64 %130, %131
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %136 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = mul i64 %134, %137
  %139 = udiv i64 %138, 100
  %140 = lshr i64 %139, 1
  %141 = icmp ult i64 %133, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %10, align 4
  br label %201

143:                                              ; preds = %103
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @EXTENT_CACHE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %143
  %148 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %149 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %148, i32 0, i32 2
  %150 = call i32 @atomic_read(i32* %149)
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %154 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %153, i32 0, i32 1
  %155 = call i32 @atomic_read(i32* %154)
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = add i64 %152, %157
  %159 = load i32, i32* @PAGE_SHIFT, align 4
  %160 = zext i32 %159 to i64
  %161 = lshr i64 %158, %160
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %165 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = mul i64 %163, %166
  %168 = udiv i64 %167, 100
  %169 = lshr i64 %168, 1
  %170 = icmp ult i64 %162, %169
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %10, align 4
  br label %200

172:                                              ; preds = %143
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @INMEM_PAGES, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %178 = load i32, i32* @F2FS_INMEM_PAGES, align 4
  %179 = call i64 @get_pages(%struct.f2fs_sb_info* %177, i32 %178)
  store i64 %179, i64* %9, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %7, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sdiv i32 %182, 5
  %184 = sext i32 %183 to i64
  %185 = icmp ult i64 %180, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %10, align 4
  br label %199

187:                                              ; preds = %172
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %189 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %187
  store i32 1, i32* %3, align 4
  br label %206

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %198, %176
  br label %200

200:                                              ; preds = %199, %147
  br label %201

201:                                              ; preds = %200, %128
  br label %202

202:                                              ; preds = %201, %89
  br label %203

203:                                              ; preds = %202, %73
  br label %204

204:                                              ; preds = %203, %24
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %197, %88
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i64 @excess_cached_nats(%struct.f2fs_sb_info*) #1

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

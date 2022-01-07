; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_get_valid_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_get_valid_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i8*, i32, %struct.f2fs_super_block* }
%struct.f2fs_super_block = type { i32, i32 }
%struct.f2fs_checkpoint = type opaque
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_get_valid_checkpoint(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_checkpoint*, align 8
  %5 = alloca %struct.f2fs_super_block*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %19, i32 0, i32 3
  %21 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %20, align 8
  store %struct.f2fs_super_block* %21, %struct.f2fs_super_block** %5, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = call i32 @__cp_payload(%struct.f2fs_sb_info* %25)
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @array_size(i64 %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %28, i32 %31, i32 %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %37 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %194

43:                                               ; preds = %1
  %44 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %45 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %12, align 8
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call %struct.page* @validate_checkpoint(%struct.f2fs_sb_info* %49, i64 %50, i64* %10)
  store %struct.page* %51, %struct.page** %6, align 8
  %52 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %53 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %12, align 8
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call %struct.page* @validate_checkpoint(%struct.f2fs_sb_info* %60, i64 %61, i64* %11)
  store %struct.page* %62, %struct.page** %7, align 8
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = icmp ne %struct.page* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %43
  %66 = load %struct.page*, %struct.page** %7, align 8
  %67 = icmp ne %struct.page* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @ver_after(i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %74, %struct.page** %8, align 8
  br label %77

75:                                               ; preds = %68
  %76 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %76, %struct.page** %8, align 8
  br label %77

77:                                               ; preds = %75, %73
  br label %93

78:                                               ; preds = %65, %43
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = icmp ne %struct.page* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %82, %struct.page** %8, align 8
  br label %92

83:                                               ; preds = %78
  %84 = load %struct.page*, %struct.page** %7, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %87, %struct.page** %8, align 8
  br label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EFSCORRUPTED, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %188

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.page*, %struct.page** %8, align 8
  %95 = call i8* @page_address(%struct.page* %94)
  %96 = bitcast i8* %95 to %struct.f2fs_checkpoint*
  store %struct.f2fs_checkpoint* %96, %struct.f2fs_checkpoint** %4, align 8
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %101 = bitcast %struct.f2fs_checkpoint* %100 to i8*
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @memcpy(i8* %99, i8* %101, i64 %102)
  %104 = load %struct.page*, %struct.page** %8, align 8
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = icmp eq %struct.page* %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %109 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  br label %113

110:                                              ; preds = %93
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %112 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %111, i32 0, i32 2
  store i32 2, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %115 = call i64 @f2fs_sanity_check_ckpt(%struct.f2fs_sb_info* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @EFSCORRUPTED, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %16, align 4
  br label %183

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = icmp ule i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %178

124:                                              ; preds = %120
  %125 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %126 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load %struct.page*, %struct.page** %8, align 8
  %130 = load %struct.page*, %struct.page** %7, align 8
  %131 = icmp eq %struct.page* %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %134 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = shl i32 1, %136
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %132, %124
  store i32 1, i32* %15, align 4
  br label %141

141:                                              ; preds = %174, %140
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %177

145:                                              ; preds = %141
  %146 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %147 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %18, align 8
  %149 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  %153 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %149, i32 %152)
  store %struct.page* %153, %struct.page** %8, align 8
  %154 = load %struct.page*, %struct.page** %8, align 8
  %155 = call i64 @IS_ERR(%struct.page* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = load %struct.page*, %struct.page** %8, align 8
  %159 = call i32 @PTR_ERR(%struct.page* %158)
  store i32 %159, i32* %16, align 4
  br label %183

160:                                              ; preds = %145
  %161 = load %struct.page*, %struct.page** %8, align 8
  %162 = call i8* @page_address(%struct.page* %161)
  store i8* %162, i8** %17, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %9, align 8
  %167 = mul i64 %165, %166
  %168 = getelementptr inbounds i8, i8* %163, i64 %167
  %169 = load i8*, i8** %17, align 8
  %170 = load i64, i64* %9, align 8
  %171 = call i32 @memcpy(i8* %168, i8* %169, i64 %170)
  %172 = load %struct.page*, %struct.page** %8, align 8
  %173 = call i32 @f2fs_put_page(%struct.page* %172, i32 1)
  br label %174

174:                                              ; preds = %160
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %141

177:                                              ; preds = %141
  br label %178

178:                                              ; preds = %177, %123
  %179 = load %struct.page*, %struct.page** %6, align 8
  %180 = call i32 @f2fs_put_page(%struct.page* %179, i32 1)
  %181 = load %struct.page*, %struct.page** %7, align 8
  %182 = call i32 @f2fs_put_page(%struct.page* %181, i32 1)
  store i32 0, i32* %2, align 4
  br label %194

183:                                              ; preds = %157, %117
  %184 = load %struct.page*, %struct.page** %6, align 8
  %185 = call i32 @f2fs_put_page(%struct.page* %184, i32 1)
  %186 = load %struct.page*, %struct.page** %7, align 8
  %187 = call i32 @f2fs_put_page(%struct.page* %186, i32 1)
  br label %188

188:                                              ; preds = %183, %88
  %189 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %190 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @kvfree(i8* %191)
  %193 = load i32, i32* %16, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %188, %178, %40
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @__cp_payload(%struct.f2fs_sb_info*) #1

declare dso_local i8* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.page* @validate_checkpoint(%struct.f2fs_sb_info*, i64, i64*) #1

declare dso_local i64 @ver_after(i64, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @f2fs_sanity_check_ckpt(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

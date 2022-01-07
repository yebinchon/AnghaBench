; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_read_bpb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_read_bpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_boot_sector = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fat_bios_param_block = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bogus number of reserved sectors\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bogus number of FAT structure\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid media value (0x%02x)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"bogus logical sector size %u\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"bogus sectors per cluster %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_boot_sector*, i32, %struct.fat_bios_param_block*)* @fat_read_bpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_read_bpb(%struct.super_block* %0, %struct.fat_boot_sector* %1, i32 %2, %struct.fat_bios_param_block* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fat_boot_sector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fat_bios_param_block*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.fat_boot_sector* %1, %struct.fat_boot_sector** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fat_bios_param_block* %3, %struct.fat_bios_param_block** %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %13 = call i32 @memset(%struct.fat_bios_param_block* %12, i32 0, i32 112)
  %14 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %15 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %14, i32 0, i32 10
  %16 = call i8* @get_unaligned_le16(i32* %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %19 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %21 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %24 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %26 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @le16_to_cpu(i32 %27)
  %29 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %30 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %32 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %35 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %37 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %36, i32 0, i32 7
  %38 = call i8* @get_unaligned_le16(i32* %37)
  %39 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %40 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %39, i32 0, i32 14
  store i8* %38, i8** %40, align 8
  %41 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %42 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %41, i32 0, i32 6
  %43 = call i8* @get_unaligned_le16(i32* %42)
  %44 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %45 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %44, i32 0, i32 13
  store i8* %43, i8** %45, align 8
  %46 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %47 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @le16_to_cpu(i32 %48)
  %50 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %51 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  %52 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %53 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %57 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %59 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %63 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %65 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @get_unaligned_le32(i32 %67)
  %69 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %70 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  %71 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %72 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %77 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %79 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %84 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %86 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %91 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %93 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %97 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %99 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @get_unaligned_le32(i32 %101)
  %103 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %104 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %106 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = call i32 (%struct.super_block*, i32, i8*, ...) @fat_msg(%struct.super_block* %113, i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %109
  br label %193

117:                                              ; preds = %4
  %118 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %119 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct.super_block*, %struct.super_block** %5, align 8
  %127 = load i32, i32* @KERN_ERR, align 4
  %128 = call i32 (%struct.super_block*, i32, i8*, ...) @fat_msg(%struct.super_block* %126, i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %122
  br label %193

130:                                              ; preds = %117
  %131 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %132 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @fat_valid_media(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = load i32, i32* @KERN_ERR, align 4
  %142 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %143 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (%struct.super_block*, i32, i8*, ...) @fat_msg(%struct.super_block* %140, i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %139, %136
  br label %193

148:                                              ; preds = %130
  %149 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %150 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @is_power_of_2(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %156 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %157, 512
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %161 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sgt i32 %162, 4096
  br i1 %163, label %164, label %175

164:                                              ; preds = %159, %154, %148
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load %struct.super_block*, %struct.super_block** %5, align 8
  %169 = load i32, i32* @KERN_ERR, align 4
  %170 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %171 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.super_block*, i32, i8*, ...) @fat_msg(%struct.super_block* %168, i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %167, %164
  br label %193

175:                                              ; preds = %159
  %176 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %177 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @is_power_of_2(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = load %struct.super_block*, %struct.super_block** %5, align 8
  %186 = load i32, i32* @KERN_ERR, align 4
  %187 = load %struct.fat_bios_param_block*, %struct.fat_bios_param_block** %8, align 8
  %188 = getelementptr inbounds %struct.fat_bios_param_block, %struct.fat_bios_param_block* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (%struct.super_block*, i32, i8*, ...) @fat_msg(%struct.super_block* %185, i32 %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %184, %181
  br label %193

192:                                              ; preds = %175
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %192, %191, %174, %147, %129, %116
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local i32 @memset(%struct.fat_bios_param_block*, i32, i32) #1

declare dso_local i8* @get_unaligned_le16(i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @get_unaligned_le32(i32) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @fat_valid_media(i64) #1

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

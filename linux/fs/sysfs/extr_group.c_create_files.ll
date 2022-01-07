; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 (%struct.kobject*, %struct.attribute*, i32)*, i32 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.bin_attribute**, %struct.attribute** }
%struct.attribute = type { i32, i32 }
%struct.bin_attribute = type { %struct.attribute }

@SYSFS_PREALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attribute %s: Invalid permissions 0%o\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kobject*, i32, i32, %struct.attribute_group*, i32)* @create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_files(%struct.kernfs_node* %0, %struct.kobject* %1, i32 %2, i32 %3, %struct.attribute_group* %4, i32 %5) #0 {
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.attribute_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.attribute**, align 8
  %14 = alloca %struct.bin_attribute**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.attribute_group* %4, %struct.attribute_group** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %20 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %19, i32 0, i32 3
  %21 = load %struct.attribute**, %struct.attribute*** %20, align 8
  %22 = icmp ne %struct.attribute** %21, null
  br i1 %22, label %23, label %110

23:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %24 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %25 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %24, i32 0, i32 3
  %26 = load %struct.attribute**, %struct.attribute*** %25, align 8
  store %struct.attribute** %26, %struct.attribute*** %13, align 8
  br label %27

27:                                               ; preds = %97, %23
  %28 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %29 = load %struct.attribute*, %struct.attribute** %28, align 8
  %30 = icmp ne %struct.attribute* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %102

37:                                               ; preds = %35
  %38 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %39 = load %struct.attribute*, %struct.attribute** %38, align 8
  %40 = getelementptr inbounds %struct.attribute, %struct.attribute* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %46 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %47 = load %struct.attribute*, %struct.attribute** %46, align 8
  %48 = getelementptr inbounds %struct.attribute, %struct.attribute* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %45, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %53 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %52, i32 0, i32 0
  %54 = load i32 (%struct.kobject*, %struct.attribute*, i32)*, i32 (%struct.kobject*, %struct.attribute*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.kobject*, %struct.attribute*, i32)* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %58 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %57, i32 0, i32 0
  %59 = load i32 (%struct.kobject*, %struct.attribute*, i32)*, i32 (%struct.kobject*, %struct.attribute*, i32)** %58, align 8
  %60 = load %struct.kobject*, %struct.kobject** %8, align 8
  %61 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %62 = load %struct.attribute*, %struct.attribute** %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 %59(%struct.kobject* %60, %struct.attribute* %62, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %97

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @SYSFS_PREALLOC, align 4
  %72 = or i32 %71, 436
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %76 = load %struct.attribute*, %struct.attribute** %75, align 8
  %77 = getelementptr inbounds %struct.attribute, %struct.attribute* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @WARN(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @SYSFS_PREALLOC, align 4
  %82 = or i32 %81, 436
  %83 = load i32, i32* %17, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %17, align 4
  %85 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %86 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %87 = load %struct.attribute*, %struct.attribute** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* %85, %struct.attribute* %87, i32 0, i32 %88, i32 %89, i32 %90, i32* null)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %69
  br label %102

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  %100 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %101 = getelementptr inbounds %struct.attribute*, %struct.attribute** %100, i32 1
  store %struct.attribute** %101, %struct.attribute*** %13, align 8
  br label %27

102:                                              ; preds = %95, %35
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %107 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %108 = call i32 @remove_files(%struct.kernfs_node* %106, %struct.attribute_group* %107)
  br label %200

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %6
  %111 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %112 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %111, i32 0, i32 2
  %113 = load %struct.bin_attribute**, %struct.bin_attribute*** %112, align 8
  %114 = icmp ne %struct.bin_attribute** %113, null
  br i1 %114, label %115, label %199

115:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  %116 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %117 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %116, i32 0, i32 2
  %118 = load %struct.bin_attribute**, %struct.bin_attribute*** %117, align 8
  store %struct.bin_attribute** %118, %struct.bin_attribute*** %14, align 8
  br label %119

119:                                              ; preds = %186, %115
  %120 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %121 = load %struct.bin_attribute*, %struct.bin_attribute** %120, align 8
  %122 = icmp ne %struct.bin_attribute* %121, null
  br i1 %122, label %123, label %191

123:                                              ; preds = %119
  %124 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %125 = load %struct.bin_attribute*, %struct.bin_attribute** %124, align 8
  %126 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.attribute, %struct.attribute* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %133 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %134 = load %struct.bin_attribute*, %struct.bin_attribute** %133, align 8
  %135 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.attribute, %struct.attribute* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %132, i32 %137)
  br label %139

139:                                              ; preds = %131, %123
  %140 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %141 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %140, i32 0, i32 1
  %142 = load i32 (%struct.kobject*, %struct.bin_attribute*, i32)*, i32 (%struct.kobject*, %struct.bin_attribute*, i32)** %141, align 8
  %143 = icmp ne i32 (%struct.kobject*, %struct.bin_attribute*, i32)* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %146 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %145, i32 0, i32 1
  %147 = load i32 (%struct.kobject*, %struct.bin_attribute*, i32)*, i32 (%struct.kobject*, %struct.bin_attribute*, i32)** %146, align 8
  %148 = load %struct.kobject*, %struct.kobject** %8, align 8
  %149 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %150 = load %struct.bin_attribute*, %struct.bin_attribute** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 %147(%struct.kobject* %148, %struct.bin_attribute* %150, i32 %151)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %144
  br label %186

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %139
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @SYSFS_PREALLOC, align 4
  %160 = or i32 %159, 436
  %161 = xor i32 %160, -1
  %162 = and i32 %158, %161
  %163 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %164 = load %struct.bin_attribute*, %struct.bin_attribute** %163, align 8
  %165 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.attribute, %struct.attribute* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @WARN(i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load i32, i32* @SYSFS_PREALLOC, align 4
  %171 = or i32 %170, 436
  %172 = load i32, i32* %18, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %18, align 4
  %174 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %175 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %176 = load %struct.bin_attribute*, %struct.bin_attribute** %175, align 8
  %177 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %176, i32 0, i32 0
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* %174, %struct.attribute* %177, i32 1, i32 %178, i32 %179, i32 %180, i32* null)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %157
  br label %191

185:                                              ; preds = %157
  br label %186

186:                                              ; preds = %185, %155
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  %189 = load %struct.bin_attribute**, %struct.bin_attribute*** %14, align 8
  %190 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %189, i32 1
  store %struct.bin_attribute** %190, %struct.bin_attribute*** %14, align 8
  br label %119

191:                                              ; preds = %184, %119
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %196 = load %struct.attribute_group*, %struct.attribute_group** %11, align 8
  %197 = call i32 @remove_files(%struct.kernfs_node* %195, %struct.attribute_group* %196)
  br label %198

198:                                              ; preds = %194, %191
  br label %199

199:                                              ; preds = %198, %110
  br label %200

200:                                              ; preds = %199, %105
  %201 = load i32, i32* %15, align 4
  ret i32 %201
}

declare dso_local i32 @kernfs_remove_by_name(%struct.kernfs_node*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @sysfs_add_file_mode_ns(%struct.kernfs_node*, %struct.attribute*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @remove_files(%struct.kernfs_node*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

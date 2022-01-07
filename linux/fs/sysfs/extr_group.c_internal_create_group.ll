; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_internal_create_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_internal_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node*, i32 }
%struct.kernfs_node = type { i32 }
%struct.attribute_group = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"sysfs: (bin_)attrs not set by subsystem for group: %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't update unknown attr grp name: %s/%s\0A\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i32, %struct.attribute_group*)* @internal_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_create_group(%struct.kobject* %0, i32 %1, %struct.attribute_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.attribute_group* %2, %struct.attribute_group** %7, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = icmp ne %struct.kobject* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load %struct.kobject*, %struct.kobject** %5, align 8
  %19 = getelementptr inbounds %struct.kobject, %struct.kobject* %18, i32 0, i32 0
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %19, align 8
  %21 = icmp ne %struct.kernfs_node* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i1 [ true, %3 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %185

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.kobject*, %struct.kobject** %5, align 8
  %38 = getelementptr inbounds %struct.kobject, %struct.kobject* %37, i32 0, i32 0
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %38, align 8
  %40 = icmp ne %struct.kernfs_node* %39, null
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %185

50:                                               ; preds = %42
  %51 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %52 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %50
  %56 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %57 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load %struct.kobject*, %struct.kobject** %5, align 8
  %62 = getelementptr inbounds %struct.kobject, %struct.kobject* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %65 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = inttoptr i64 %66 to i8*
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %70 ]
  %73 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %185

76:                                               ; preds = %55, %50
  %77 = load %struct.kobject*, %struct.kobject** %5, align 8
  %78 = call i32 @kobject_get_ownership(%struct.kobject* %77, i32* %9, i32* %10)
  %79 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %80 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %145

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load %struct.kobject*, %struct.kobject** %5, align 8
  %88 = getelementptr inbounds %struct.kobject, %struct.kobject* %87, i32 0, i32 0
  %89 = load %struct.kernfs_node*, %struct.kernfs_node** %88, align 8
  %90 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %91 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %89, i64 %92)
  store %struct.kernfs_node* %93, %struct.kernfs_node** %8, align 8
  %94 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %95 = icmp ne %struct.kernfs_node* %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %86
  %97 = load %struct.kobject*, %struct.kobject** %5, align 8
  %98 = getelementptr inbounds %struct.kobject, %struct.kobject* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %101 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %185

106:                                              ; preds = %86
  br label %144

107:                                              ; preds = %83
  %108 = load %struct.kobject*, %struct.kobject** %5, align 8
  %109 = getelementptr inbounds %struct.kobject, %struct.kobject* %108, i32 0, i32 0
  %110 = load %struct.kernfs_node*, %struct.kernfs_node** %109, align 8
  %111 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %112 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @S_IRWXU, align 4
  %115 = load i32, i32* @S_IRUGO, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @S_IXUGO, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.kobject*, %struct.kobject** %5, align 8
  %122 = call %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* %110, i64 %113, i32 %118, i32 %119, i32 %120, %struct.kobject* %121, i32* null)
  store %struct.kernfs_node* %122, %struct.kernfs_node** %8, align 8
  %123 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %124 = call i64 @IS_ERR(%struct.kernfs_node* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %107
  %127 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %128 = call i32 @PTR_ERR(%struct.kernfs_node* %127)
  %129 = load i32, i32* @EEXIST, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.kobject*, %struct.kobject** %5, align 8
  %134 = getelementptr inbounds %struct.kobject, %struct.kobject* %133, i32 0, i32 0
  %135 = load %struct.kernfs_node*, %struct.kernfs_node** %134, align 8
  %136 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %137 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @sysfs_warn_dup(%struct.kernfs_node* %135, i64 %138)
  br label %140

140:                                              ; preds = %132, %126
  %141 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %142 = call i32 @PTR_ERR(%struct.kernfs_node* %141)
  store i32 %142, i32* %4, align 4
  br label %185

143:                                              ; preds = %107
  br label %144

144:                                              ; preds = %143, %106
  br label %149

145:                                              ; preds = %76
  %146 = load %struct.kobject*, %struct.kobject** %5, align 8
  %147 = getelementptr inbounds %struct.kobject, %struct.kobject* %146, i32 0, i32 0
  %148 = load %struct.kernfs_node*, %struct.kernfs_node** %147, align 8
  store %struct.kernfs_node* %148, %struct.kernfs_node** %8, align 8
  br label %149

149:                                              ; preds = %145, %144
  %150 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %151 = call i32 @kernfs_get(%struct.kernfs_node* %150)
  %152 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %153 = load %struct.kobject*, %struct.kobject** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @create_files(%struct.kernfs_node* %152, %struct.kobject* %153, i32 %154, i32 %155, %struct.attribute_group* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %149
  %162 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %163 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %168 = call i32 @kernfs_remove(%struct.kernfs_node* %167)
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169, %149
  %171 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %172 = call i32 @kernfs_put(%struct.kernfs_node* %171)
  %173 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %174 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %182 = call i32 @kernfs_put(%struct.kernfs_node* %181)
  br label %183

183:                                              ; preds = %180, %177, %170
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %140, %96, %71, %47, %30
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i8*) #1

declare dso_local i32 @kobject_get_ownership(%struct.kobject*, i32*, i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node*, i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i64) #1

declare dso_local %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node*, i64, i32, i32, i32, %struct.kobject*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @sysfs_warn_dup(%struct.kernfs_node*, i64) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @create_files(%struct.kernfs_node*, %struct.kobject*, i32, i32, %struct.attribute_group*, i32) #1

declare dso_local i32 @kernfs_remove(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

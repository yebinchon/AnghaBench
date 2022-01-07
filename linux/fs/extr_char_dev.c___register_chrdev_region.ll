; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c___register_chrdev_region.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c___register_chrdev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_device_struct = type { i32, i32, i32, %struct.char_device_struct*, i32 }

@CHRDEV_MAJOR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"CHRDEV \22%s\22 major requested (%u) is greater than the maximum (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"CHRDEV \22%s\22 minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chrdevs_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"CHRDEV \22%s\22 dynamic allocation region is full\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@chrdevs = common dso_local global %struct.char_device_struct** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.char_device_struct* (i32, i32, i32, i8*)* @__register_chrdev_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.char_device_struct* @__register_chrdev_region(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.char_device_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.char_device_struct*, align 8
  %11 = alloca %struct.char_device_struct*, align 8
  %12 = alloca %struct.char_device_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.char_device_struct* null, %struct.char_device_struct** %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CHRDEV_MAJOR_MAX, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CHRDEV_MAJOR_MAX, align 4
  %22 = sub i32 %21, 1
  %23 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.char_device_struct* @ERR_PTR(i32 %25)
  store %struct.char_device_struct* %26, %struct.char_device_struct** %5, align 8
  br label %165

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MINORMASK, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = sub i32 %30, %31
  %33 = icmp ugt i32 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = sub i32 %39, 1
  %41 = load i32, i32* @MINORMASK, align 4
  %42 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36, i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.char_device_struct* @ERR_PTR(i32 %44)
  store %struct.char_device_struct* %45, %struct.char_device_struct** %5, align 8
  br label %165

46:                                               ; preds = %27
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.char_device_struct* @kzalloc(i32 32, i32 %47)
  store %struct.char_device_struct* %48, %struct.char_device_struct** %10, align 8
  %49 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %50 = icmp eq %struct.char_device_struct* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.char_device_struct* @ERR_PTR(i32 %53)
  store %struct.char_device_struct* %54, %struct.char_device_struct** %5, align 8
  br label %165

55:                                               ; preds = %46
  %56 = call i32 @mutex_lock(i32* @chrdevs_lock)
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = call i32 (...) @find_dynamic_major()
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  br label %159

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @major_to_index(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %73, i64 %75
  %77 = load %struct.char_device_struct*, %struct.char_device_struct** %76, align 8
  store %struct.char_device_struct* %77, %struct.char_device_struct** %11, align 8
  br label %78

78:                                               ; preds = %116, %68
  %79 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %80 = icmp ne %struct.char_device_struct* %79, null
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %83 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %116

88:                                               ; preds = %81
  %89 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %90 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %121

95:                                               ; preds = %88
  %96 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %97 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %100 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add i32 %98, %101
  %103 = load i32, i32* %7, align 4
  %104 = icmp ule i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %116

106:                                              ; preds = %95
  %107 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %108 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %110, %111
  %113 = icmp uge i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %121

115:                                              ; preds = %106
  br label %159

116:                                              ; preds = %105, %87
  %117 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  store %struct.char_device_struct* %117, %struct.char_device_struct** %12, align 8
  %118 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %119 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %118, i32 0, i32 3
  %120 = load %struct.char_device_struct*, %struct.char_device_struct** %119, align 8
  store %struct.char_device_struct* %120, %struct.char_device_struct** %11, align 8
  br label %78

121:                                              ; preds = %114, %94, %78
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %124 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %127 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %130 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %132 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @strlcpy(i32 %133, i8* %134, i32 4)
  %136 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %137 = icmp ne %struct.char_device_struct* %136, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %121
  %139 = load %struct.char_device_struct*, %struct.char_device_struct** %11, align 8
  %140 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %141 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %140, i32 0, i32 3
  store %struct.char_device_struct* %139, %struct.char_device_struct** %141, align 8
  %142 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %143 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %143, i64 %145
  store %struct.char_device_struct* %142, %struct.char_device_struct** %146, align 8
  br label %156

147:                                              ; preds = %121
  %148 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %149 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %148, i32 0, i32 3
  %150 = load %struct.char_device_struct*, %struct.char_device_struct** %149, align 8
  %151 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %152 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %151, i32 0, i32 3
  store %struct.char_device_struct* %150, %struct.char_device_struct** %152, align 8
  %153 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %154 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %155 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %154, i32 0, i32 3
  store %struct.char_device_struct* %153, %struct.char_device_struct** %155, align 8
  br label %156

156:                                              ; preds = %147, %138
  %157 = call i32 @mutex_unlock(i32* @chrdevs_lock)
  %158 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  store %struct.char_device_struct* %158, %struct.char_device_struct** %5, align 8
  br label %165

159:                                              ; preds = %115, %63
  %160 = call i32 @mutex_unlock(i32* @chrdevs_lock)
  %161 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %162 = call i32 @kfree(%struct.char_device_struct* %161)
  %163 = load i32, i32* %13, align 4
  %164 = call %struct.char_device_struct* @ERR_PTR(i32 %163)
  store %struct.char_device_struct* %164, %struct.char_device_struct** %5, align 8
  br label %165

165:                                              ; preds = %159, %156, %51, %34, %18
  %166 = load %struct.char_device_struct*, %struct.char_device_struct** %5, align 8
  ret %struct.char_device_struct* %166
}

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local %struct.char_device_struct* @ERR_PTR(i32) #1

declare dso_local %struct.char_device_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_dynamic_major(...) #1

declare dso_local i32 @major_to_index(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.char_device_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

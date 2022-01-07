; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_ciGetLeafPrefixKey.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_ciGetLeafPrefixKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i64, i64* }

@JFS_NAME_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, %struct.component_name*, i32)* @ciGetLeafPrefixKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciGetLeafPrefixKey(i32* %0, i32 %1, i32* %2, i32 %3, %struct.component_name* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.component_name*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.component_name, align 8
  %20 = alloca %struct.component_name, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.component_name* %4, %struct.component_name** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i64, i64* @JFS_NAME_MAX, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc_array(i64 %22, i32 8, i32 %23)
  %25 = bitcast i8* %24 to i64*
  %26 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  store i64* %25, i64** %26, align 8
  %27 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %154

33:                                               ; preds = %6
  %34 = load i64, i64* @JFS_NAME_MAX, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc_array(i64 %35, i32 8, i32 %36)
  %38 = bitcast i8* %37 to i64*
  %39 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  store i64* %38, i64** %39, align 8
  %40 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @kfree(i64* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %154

49:                                               ; preds = %33
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dtGetKey(i32* %50, i32 %51, %struct.component_name* %19, i32 %52)
  %54 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @JFS_OS2, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @JFS_OS2, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = call i32 @ciToUpper(%struct.component_name* %19)
  br label %66

66:                                               ; preds = %64, %49
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @dtGetKey(i32* %67, i32 %68, %struct.component_name* %20, i32 %69)
  %71 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @JFS_OS2, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @JFS_OS2, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = call i32 @ciToUpper(%struct.component_name* %20)
  br label %83

83:                                               ; preds = %81, %66
  store i32 0, i32* %14, align 4
  %84 = load %struct.component_name*, %struct.component_name** %12, align 8
  %85 = getelementptr inbounds %struct.component_name, %struct.component_name* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %18, align 8
  %87 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @min(i64 %88, i64 %90)
  store i32 %91, i32* %15, align 4
  %92 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  store i64* %93, i64** %16, align 8
  %94 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  store i64* %95, i64** %17, align 8
  br label %96

96:                                               ; preds = %115, %83
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load i64*, i64** %17, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %18, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i64*, i64** %16, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %17, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load %struct.component_name*, %struct.component_name** %12, align 8
  %113 = getelementptr inbounds %struct.component_name, %struct.component_name* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %147

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114
  %116 = load i64*, i64** %16, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %16, align 8
  %118 = load i64*, i64** %17, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %17, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = load i64*, i64** %18, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %18, align 8
  br label %96

126:                                              ; preds = %96
  %127 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load i64*, i64** %17, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %18, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = load %struct.component_name*, %struct.component_name** %12, align 8
  %140 = getelementptr inbounds %struct.component_name, %struct.component_name* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %146

141:                                              ; preds = %126
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.component_name*, %struct.component_name** %12, align 8
  %145 = getelementptr inbounds %struct.component_name, %struct.component_name* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %132
  br label %147

147:                                              ; preds = %146, %108
  %148 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @kfree(i64* %149)
  %151 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = call i32 @kfree(i64* %152)
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %147, %43, %30
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i8* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dtGetKey(i32*, i32, %struct.component_name*, i32) #1

declare dso_local i32 @ciToUpper(%struct.component_name*) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

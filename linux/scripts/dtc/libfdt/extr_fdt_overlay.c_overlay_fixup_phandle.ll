; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_overlay.c_overlay_fixup_phandle.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_overlay.c_overlay_fixup_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4
@FDT_ERR_BADOVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @overlay_fixup_phandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_fixup_phandle(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @fdt_getprop_by_offset(i8* %24, i32 %25, i8** %11, i32* %12)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %162

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %162

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %158, %39
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %16, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @memchr(i8* %42, i8 signext 0, i32 %43)
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %162

50:                                               ; preds = %40
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i8*, i8** %10, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %16, align 8
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %19, align 4
  %69 = call i8* @memchr(i8* %67, i8 signext 58, i32 %68)
  store i8* %69, i8** %20, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %50
  %73 = load i8*, i8** %20, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %50
  %78 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %162

80:                                               ; preds = %72
  %81 = load i8*, i8** %20, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %19, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %162

94:                                               ; preds = %80
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %19, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %19, align 4
  %99 = load i8*, i8** %20, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %14, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i8* @memchr(i8* %101, i8 signext 58, i32 %102)
  store i8* %103, i8** %20, align 8
  %104 = load i8*, i8** %20, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i8*, i8** %20, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 58
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %94
  %112 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %162

114:                                              ; preds = %106
  %115 = load i8*, i8** %20, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %162

126:                                              ; preds = %114
  %127 = load i8*, i8** %20, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = call i32 @strtoul(i8* %128, i8** %21, i32 10)
  store i32 %129, i32* %22, align 4
  %130 = load i8*, i8** %21, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %126
  %135 = load i8*, i8** %21, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = icmp ule i8* %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %126
  %140 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %162

142:                                              ; preds = %134
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @overlay_fixup_one_phandle(i8* %143, i8* %144, i32 %145, i8* %146, i32 %147, i8* %148, i32 %149, i32 %150, i8* %151)
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %23, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i32, i32* %23, align 4
  store i32 %156, i32* %5, align 4
  br label %162

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %40, label %161

161:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %155, %139, %123, %111, %91, %77, %47, %37, %34
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i8* @fdt_getprop_by_offset(i8*, i32, i8**, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @overlay_fixup_one_phandle(i8*, i8*, i32, i8*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

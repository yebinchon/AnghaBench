; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_lookup_layer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_lookup_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_lookup_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ovl_lookup_data*, %struct.dentry**)* @ovl_lookup_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_lookup_layer(%struct.dentry* %0, %struct.ovl_lookup_data* %1, %struct.dentry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_lookup_data*, align 8
  %7 = alloca %struct.dentry**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.ovl_lookup_data* %1, %struct.ovl_lookup_data** %6, align 8
  store %struct.dentry** %2, %struct.dentry*** %7, align 8
  %15 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %16 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %21 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %22 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %32 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %33 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %37 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.dentry**, %struct.dentry*** %7, align 8
  %42 = call i32 @ovl_lookup_single(%struct.dentry* %30, %struct.ovl_lookup_data* %31, i8* %35, i64 %40, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.dentry** %41)
  store i32 %42, i32* %4, align 4
  br label %140

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %136, %43
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = call i32 @IS_ERR_OR_NULL(%struct.dentry* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = call i64 @d_can_lookup(%struct.dentry* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %137

54:                                               ; preds = %52
  %55 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %56 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %60 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i8* @strchrnul(i8* %68, i8 signext 47)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  store i64 %74, i64* %13, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 47
  %86 = zext i1 %85 to i32
  %87 = call i64 @WARN_ON(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %54
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %140

92:                                               ; preds = %54
  %93 = load %struct.dentry*, %struct.dentry** %5, align 8
  %94 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %98 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @ovl_lookup_single(%struct.dentry* %93, %struct.ovl_lookup_data* %94, i8* %95, i64 %96, i32 %104, i8* %105, %struct.dentry** %5)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.dentry*, %struct.dentry** %9, align 8
  %108 = call i32 @dput(%struct.dentry* %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %92
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %140

113:                                              ; preds = %92
  %114 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %114, %struct.dentry** %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %137

118:                                              ; preds = %113
  %119 = load i64, i64* %13, align 8
  %120 = add i64 %119, 1
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %6, align 8
  %125 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp uge i64 %123, %128
  %130 = zext i1 %129 to i32
  %131 = call i64 @WARN_ON(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %140

136:                                              ; preds = %118
  br label %44

137:                                              ; preds = %117, %52
  %138 = load %struct.dentry*, %struct.dentry** %9, align 8
  %139 = load %struct.dentry**, %struct.dentry*** %7, align 8
  store %struct.dentry* %138, %struct.dentry** %139, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %133, %111, %89, %29
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @ovl_lookup_single(%struct.dentry*, %struct.ovl_lookup_data*, i8*, i64, i32, i8*, %struct.dentry**) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i64 @d_can_lookup(%struct.dentry*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

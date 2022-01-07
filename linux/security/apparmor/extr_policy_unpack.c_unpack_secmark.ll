; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_secmark.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_secmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }
%struct.aa_profile = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32 }

@AA_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"secmark\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AA_ARRAYEND = common dso_local global i32 0, align 4
@AA_STRUCTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, %struct.aa_profile*)* @unpack_secmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_secmark(%struct.aa_ext* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %5, align 8
  %9 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %10 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %13 = load i32, i32* @AA_STRUCT, align 4
  %14 = call i64 @unpack_nameX(%struct.aa_ext* %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %90

16:                                               ; preds = %2
  %17 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %18 = call i32 @unpack_array(%struct.aa_ext* %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_4__* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 1
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %91

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %32 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %74, %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %39 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %40 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i32 @unpack_u8(%struct.aa_ext* %38, i32* %45, i32* null)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %91

49:                                               ; preds = %37
  %50 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %51 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %52 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @unpack_u8(%struct.aa_ext* %50, i32* %57, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %91

61:                                               ; preds = %49
  %62 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %63 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %64 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @unpack_strdup(%struct.aa_ext* %62, %struct.TYPE_4__** %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %91

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %33

77:                                               ; preds = %33
  %78 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %79 = load i32, i32* @AA_ARRAYEND, align 4
  %80 = call i64 @unpack_nameX(%struct.aa_ext* %78, i32 %79, i8* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %91

83:                                               ; preds = %77
  %84 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %85 = load i32, i32* @AA_STRUCTEND, align 4
  %86 = call i64 @unpack_nameX(%struct.aa_ext* %84, i32 %85, i8* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %2
  store i32 1, i32* %3, align 4
  br label %127

91:                                               ; preds = %88, %82, %72, %60, %48, %28
  %92 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %93 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %103 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @kfree(%struct.TYPE_4__* %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %97

114:                                              ; preds = %97
  %115 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %116 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 @kfree(%struct.TYPE_4__* %117)
  %119 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %120 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %122 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %121, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %122, align 8
  br label %123

123:                                              ; preds = %114, %91
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %126 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %90
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @unpack_array(%struct.aa_ext*, i32*) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @unpack_u8(%struct.aa_ext*, i32*, i32*) #1

declare dso_local i32 @unpack_strdup(%struct.aa_ext*, %struct.TYPE_4__**, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

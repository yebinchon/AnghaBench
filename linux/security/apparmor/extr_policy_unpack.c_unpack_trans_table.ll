; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_trans_table.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_trans_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }
%struct.aa_profile = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i32 }

@AA_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"xtable\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AA_ARRAYEND = common dso_local global i32 0, align 4
@AA_STRUCTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, %struct.aa_profile*)* @unpack_trans_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_trans_table(%struct.aa_ext* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %5, align 8
  %14 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %15 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %18 = load i32, i32* @AA_STRUCT, align 4
  %19 = call i64 @unpack_nameX(%struct.aa_ext* %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %141

21:                                               ; preds = %2
  %22 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %23 = call i32 @unpack_array(%struct.aa_ext* %22, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 12
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %142

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8** @kcalloc(i32 %28, i32 8, i32 %29)
  %31 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %32 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8** %30, i8*** %34, align 8
  %35 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %36 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %142

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %45 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %125, %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %128

52:                                               ; preds = %48
  %53 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %54 = call i32 @unpack_strdup(%struct.aa_ext* %53, i8** %9, i32* null)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %142

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %61 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %59, i8** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %142

73:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 58
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %142

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 58, i8* %112, align 1
  br label %118

113:                                              ; preds = %105
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %142

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %108
  br label %124

119:                                              ; preds = %94
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %142

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %48

128:                                              ; preds = %48
  %129 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %130 = load i32, i32* @AA_ARRAYEND, align 4
  %131 = call i64 @unpack_nameX(%struct.aa_ext* %129, i32 %130, i8* null)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %142

134:                                              ; preds = %128
  %135 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %136 = load i32, i32* @AA_STRUCTEND, align 4
  %137 = call i64 @unpack_nameX(%struct.aa_ext* %135, i32 %136, i8* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %142

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %2
  store i32 1, i32* %3, align 4
  br label %150

142:                                              ; preds = %139, %133, %122, %116, %104, %72, %57, %41, %26
  %143 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %144 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = call i32 @aa_free_domain_entries(%struct.TYPE_4__* %145)
  %147 = load i8*, i8** %6, align 8
  %148 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %149 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %142, %141
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @unpack_array(%struct.aa_ext*, i32*) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @unpack_strdup(%struct.aa_ext*, i8**, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @aa_free_domain_entries(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

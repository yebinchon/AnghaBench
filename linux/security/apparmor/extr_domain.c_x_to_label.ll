; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_x_to_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_x_to_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.aa_ns*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.aa_ns = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8** }
%struct.linux_binprm = type { i32 }

@AA_X_TYPE_MASK = common dso_local global i32 0, align 4
@AA_X_INDEX_MASK = common dso_local global i32 0, align 4
@AA_X_CHILD = common dso_local global i32 0, align 4
@AA_X_INHERIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ix fallback\00", align 1
@AA_X_UNCONFINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ux fallback\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_profile*, %struct.linux_binprm*, i8*, i32, i8**, i8**)* @x_to_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @x_to_label(%struct.aa_profile* %0, %struct.linux_binprm* %1, i8* %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.linux_binprm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.aa_label*, align 8
  %14 = alloca %struct.aa_ns*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.aa_label*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.linux_binprm* %1, %struct.linux_binprm** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  store %struct.aa_label* null, %struct.aa_label** %13, align 8
  %18 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %19 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %18, i32 0, i32 0
  %20 = load %struct.aa_ns*, %struct.aa_ns** %19, align 8
  store %struct.aa_ns* %20, %struct.aa_ns** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @AA_X_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %24 = load i32, i32* %15, align 4
  switch i32 %24, label %75 [
    i32 129, label %25
    i32 128, label %27
    i32 130, label %49
  ]

25:                                               ; preds = %6
  %26 = load i8**, i8*** %11, align 8
  store i8* null, i8** %26, align 8
  br label %75

27:                                               ; preds = %6
  %28 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %29 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @AA_X_INDEX_MASK, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %32, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 38
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8**, i8*** %11, align 8
  %47 = call %struct.aa_label* @x_table_lookup(%struct.aa_profile* %44, i32 %45, i8** %46)
  store %struct.aa_label* %47, %struct.aa_label** %13, align 8
  store i8* null, i8** %16, align 8
  br label %75

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %6, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @AA_X_CHILD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.linux_binprm*, %struct.linux_binprm** %8, align 8
  %56 = load %struct.aa_ns*, %struct.aa_ns** %14, align 8
  %57 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %58 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %9, align 8
  %61 = load i8**, i8*** %12, align 8
  %62 = call %struct.aa_label* @find_attach(%struct.linux_binprm* %55, %struct.aa_ns* %56, i32* %59, i8* %60, i8** %61)
  store %struct.aa_label* %62, %struct.aa_label** %13, align 8
  br label %72

63:                                               ; preds = %49
  %64 = load %struct.linux_binprm*, %struct.linux_binprm** %8, align 8
  %65 = load %struct.aa_ns*, %struct.aa_ns** %14, align 8
  %66 = load %struct.aa_ns*, %struct.aa_ns** %14, align 8
  %67 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %9, align 8
  %70 = load i8**, i8*** %12, align 8
  %71 = call %struct.aa_label* @find_attach(%struct.linux_binprm* %64, %struct.aa_ns* %65, i32* %68, i8* %69, i8** %70)
  store %struct.aa_label* %71, %struct.aa_label** %13, align 8
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i8*, i8** %9, align 8
  %74 = load i8**, i8*** %11, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %6, %72, %43, %25
  %76 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %77 = icmp ne %struct.aa_label* %76, null
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @AA_X_INHERIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %84, align 8
  %85 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %86 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %85, i32 0, i32 1
  %87 = call %struct.aa_label* @aa_get_newest_label(i32* %86)
  store %struct.aa_label* %87, %struct.aa_label** %13, align 8
  br label %101

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @AA_X_UNCONFINED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %95 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %94, i32 0, i32 0
  %96 = load %struct.aa_ns*, %struct.aa_ns** %95, align 8
  %97 = call i32* @ns_unconfined(%struct.aa_ns* %96)
  %98 = call %struct.aa_label* @aa_get_newest_label(i32* %97)
  store %struct.aa_label* %98, %struct.aa_label** %13, align 8
  %99 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %88
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %104 = icmp ne %struct.aa_label* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load i8*, i8** %16, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  store %struct.aa_label* %109, %struct.aa_label** %17, align 8
  %110 = load %struct.aa_label*, %struct.aa_label** %17, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call %struct.aa_label* @aa_label_parse(%struct.aa_label* %110, i8* %111, i32 %112, i32 1, i32 0)
  store %struct.aa_label* %113, %struct.aa_label** %13, align 8
  %114 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  %115 = call i64 @IS_ERR(%struct.aa_label* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store %struct.aa_label* null, %struct.aa_label** %13, align 8
  br label %118

118:                                              ; preds = %117, %108
  %119 = load %struct.aa_label*, %struct.aa_label** %17, align 8
  %120 = call i32 @aa_put_label(%struct.aa_label* %119)
  br label %121

121:                                              ; preds = %118, %105, %102
  %122 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  ret %struct.aa_label* %122
}

declare dso_local %struct.aa_label* @x_table_lookup(%struct.aa_profile*, i32, i8**) #1

declare dso_local %struct.aa_label* @find_attach(%struct.linux_binprm*, %struct.aa_ns*, i32*, i8*, i8**) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(i32*) #1

declare dso_local i32* @ns_unconfined(%struct.aa_ns*) #1

declare dso_local %struct.aa_label* @aa_label_parse(%struct.aa_label*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

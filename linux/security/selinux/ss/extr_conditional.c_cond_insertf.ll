; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_insertf.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_insertf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32 }
%struct.avtab_key = type { i32 }
%struct.avtab_datum = type { i32 }
%struct.cond_insertf_data = type { %struct.cond_av_list*, %struct.cond_av_list*, %struct.cond_av_list*, %struct.policydb* }
%struct.cond_av_list = type { %struct.cond_av_list*, %struct.avtab_node* }
%struct.avtab_node = type { i32 }
%struct.policydb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AVTAB_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"SELinux: type rule already exists outside of a conditional.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SELinux: too many conflicting type rules.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SELinux: conflicting type rules.\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"SELinux: conflicting type rules when adding type rule for true.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"SELinux: could not insert rule.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avtab*, %struct.avtab_key*, %struct.avtab_datum*, i8*)* @cond_insertf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_insertf(%struct.avtab* %0, %struct.avtab_key* %1, %struct.avtab_datum* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.avtab*, align 8
  %7 = alloca %struct.avtab_key*, align 8
  %8 = alloca %struct.avtab_datum*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cond_insertf_data*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca %struct.cond_av_list*, align 8
  %13 = alloca %struct.cond_av_list*, align 8
  %14 = alloca %struct.cond_av_list*, align 8
  %15 = alloca %struct.avtab_node*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %6, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %7, align 8
  store %struct.avtab_datum* %2, %struct.avtab_datum** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.cond_insertf_data*
  store %struct.cond_insertf_data* %19, %struct.cond_insertf_data** %10, align 8
  %20 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %21 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %20, i32 0, i32 3
  %22 = load %struct.policydb*, %struct.policydb** %21, align 8
  store %struct.policydb* %22, %struct.policydb** %11, align 8
  %23 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %24 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %23, i32 0, i32 2
  %25 = load %struct.cond_av_list*, %struct.cond_av_list** %24, align 8
  store %struct.cond_av_list* %25, %struct.cond_av_list** %12, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %29 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AVTAB_TYPE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %4
  %35 = load %struct.policydb*, %struct.policydb** %11, align 8
  %36 = getelementptr inbounds %struct.policydb, %struct.policydb* %35, i32 0, i32 1
  %37 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %38 = call i64 @avtab_search(i32* %36, %struct.avtab_key* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %137

42:                                               ; preds = %34
  %43 = load %struct.cond_av_list*, %struct.cond_av_list** %12, align 8
  %44 = icmp ne %struct.cond_av_list* %43, null
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load %struct.policydb*, %struct.policydb** %11, align 8
  %47 = getelementptr inbounds %struct.policydb, %struct.policydb* %46, i32 0, i32 0
  %48 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %49 = call %struct.avtab_node* @avtab_search_node(i32* %47, %struct.avtab_key* %48)
  store %struct.avtab_node* %49, %struct.avtab_node** %15, align 8
  %50 = load %struct.avtab_node*, %struct.avtab_node** %15, align 8
  %51 = icmp ne %struct.avtab_node* %50, null
  br i1 %51, label %52, label %84

52:                                               ; preds = %45
  %53 = load %struct.avtab_node*, %struct.avtab_node** %15, align 8
  %54 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %55 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @avtab_search_node_next(%struct.avtab_node* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %137

61:                                               ; preds = %52
  store i32 0, i32* %16, align 4
  %62 = load %struct.cond_av_list*, %struct.cond_av_list** %12, align 8
  store %struct.cond_av_list* %62, %struct.cond_av_list** %14, align 8
  br label %63

63:                                               ; preds = %74, %61
  %64 = load %struct.cond_av_list*, %struct.cond_av_list** %14, align 8
  %65 = icmp ne %struct.cond_av_list* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.cond_av_list*, %struct.cond_av_list** %14, align 8
  %68 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %67, i32 0, i32 1
  %69 = load %struct.avtab_node*, %struct.avtab_node** %68, align 8
  %70 = load %struct.avtab_node*, %struct.avtab_node** %15, align 8
  %71 = icmp eq %struct.avtab_node* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.cond_av_list*, %struct.cond_av_list** %14, align 8
  %76 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %75, i32 0, i32 0
  %77 = load %struct.cond_av_list*, %struct.cond_av_list** %76, align 8
  store %struct.cond_av_list* %77, %struct.cond_av_list** %14, align 8
  br label %63

78:                                               ; preds = %72, %63
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %137

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %45
  br label %94

85:                                               ; preds = %42
  %86 = load %struct.policydb*, %struct.policydb** %11, align 8
  %87 = getelementptr inbounds %struct.policydb, %struct.policydb* %86, i32 0, i32 0
  %88 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %89 = call i64 @avtab_search(i32* %87, %struct.avtab_key* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %137

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %4
  %96 = load %struct.policydb*, %struct.policydb** %11, align 8
  %97 = getelementptr inbounds %struct.policydb, %struct.policydb* %96, i32 0, i32 0
  %98 = load %struct.avtab_key*, %struct.avtab_key** %7, align 8
  %99 = load %struct.avtab_datum*, %struct.avtab_datum** %8, align 8
  %100 = call %struct.avtab_node* @avtab_insert_nonunique(i32* %97, %struct.avtab_key* %98, %struct.avtab_datum* %99)
  store %struct.avtab_node* %100, %struct.avtab_node** %15, align 8
  %101 = load %struct.avtab_node*, %struct.avtab_node** %15, align 8
  %102 = icmp ne %struct.avtab_node* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %17, align 4
  br label %137

107:                                              ; preds = %95
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call %struct.cond_av_list* @kzalloc(i32 16, i32 %108)
  store %struct.cond_av_list* %109, %struct.cond_av_list** %13, align 8
  %110 = load %struct.cond_av_list*, %struct.cond_av_list** %13, align 8
  %111 = icmp ne %struct.cond_av_list* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %17, align 4
  br label %137

115:                                              ; preds = %107
  %116 = load %struct.avtab_node*, %struct.avtab_node** %15, align 8
  %117 = load %struct.cond_av_list*, %struct.cond_av_list** %13, align 8
  %118 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %117, i32 0, i32 1
  store %struct.avtab_node* %116, %struct.avtab_node** %118, align 8
  %119 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %120 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %119, i32 0, i32 0
  %121 = load %struct.cond_av_list*, %struct.cond_av_list** %120, align 8
  %122 = icmp ne %struct.cond_av_list* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = load %struct.cond_av_list*, %struct.cond_av_list** %13, align 8
  %125 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %126 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %125, i32 0, i32 0
  store %struct.cond_av_list* %124, %struct.cond_av_list** %126, align 8
  br label %133

127:                                              ; preds = %115
  %128 = load %struct.cond_av_list*, %struct.cond_av_list** %13, align 8
  %129 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %130 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %129, i32 0, i32 1
  %131 = load %struct.cond_av_list*, %struct.cond_av_list** %130, align 8
  %132 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %131, i32 0, i32 0
  store %struct.cond_av_list* %128, %struct.cond_av_list** %132, align 8
  br label %133

133:                                              ; preds = %127, %123
  %134 = load %struct.cond_av_list*, %struct.cond_av_list** %13, align 8
  %135 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %136 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %135, i32 0, i32 1
  store %struct.cond_av_list* %134, %struct.cond_av_list** %136, align 8
  store i32 0, i32* %5, align 4
  br label %145

137:                                              ; preds = %112, %103, %91, %81, %59, %40
  %138 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %139 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %138, i32 0, i32 0
  %140 = load %struct.cond_av_list*, %struct.cond_av_list** %139, align 8
  %141 = call i32 @cond_av_list_destroy(%struct.cond_av_list* %140)
  %142 = load %struct.cond_insertf_data*, %struct.cond_insertf_data** %10, align 8
  %143 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %142, i32 0, i32 0
  store %struct.cond_av_list* null, %struct.cond_av_list** %143, align 8
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %137, %133
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @avtab_search(i32*, %struct.avtab_key*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.avtab_node* @avtab_search_node(i32*, %struct.avtab_key*) #1

declare dso_local i64 @avtab_search_node_next(%struct.avtab_node*, i32) #1

declare dso_local %struct.avtab_node* @avtab_insert_nonunique(i32*, %struct.avtab_key*, %struct.avtab_datum*) #1

declare dso_local %struct.cond_av_list* @kzalloc(i32, i32) #1

declare dso_local i32 @cond_av_list_destroy(%struct.cond_av_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

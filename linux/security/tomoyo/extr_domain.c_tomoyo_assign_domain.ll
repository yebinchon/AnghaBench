; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_assign_domain.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_assign_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.tomoyo_request_info = type { i32 }

@tomoyo_policy_loaded = common dso_local global i64 0, align 8
@TOMOYO_EXEC_TMPSIZE = common dso_local global i32 0, align 4
@tomoyo_policy_lock = common dso_local global i32 0, align 4
@tomoyo_domain_list = common dso_local global i32 0, align 4
@TOMOYO_MAC_FILE_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"use_profile %u\0A\00", align 1
@TOMOYO_MAX_ACL_GROUPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"use_group %u\0A\00", align 1
@TOMOYO_STAT_POLICY_UPDATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_domain_info* @tomoyo_assign_domain(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.tomoyo_domain_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tomoyo_domain_info, align 8
  %7 = alloca %struct.tomoyo_domain_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_domain_info*, align 8
  %10 = alloca %struct.tomoyo_request_info, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.tomoyo_domain_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.tomoyo_domain_info* @tomoyo_find_domain(i8* %13)
  store %struct.tomoyo_domain_info* %14, %struct.tomoyo_domain_info** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %16 = icmp ne %struct.tomoyo_domain_info* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i64, i64* @tomoyo_policy_loaded, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %25 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %30 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %3, align 8
  br label %158

36:                                               ; preds = %23, %20
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  store %struct.tomoyo_domain_info* %38, %struct.tomoyo_domain_info** %3, align 8
  br label %158

39:                                               ; preds = %2
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load i32, i32* @TOMOYO_EXEC_TMPSIZE, align 4
  %43 = sub nsw i32 %42, 10
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @tomoyo_correct_domain(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %39
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %3, align 8
  br label %158

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @tomoyo_namespace_jump(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %3, align 8
  br label %158

58:                                               ; preds = %53, %50
  %59 = load i8*, i8** %4, align 8
  %60 = call %struct.TYPE_2__* @tomoyo_assign_namespace(i8* %59)
  %61 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 5
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %61, align 8
  %62 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %3, align 8
  br label %158

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = call %struct.tomoyo_domain_info* (...) @tomoyo_domain()
  store %struct.tomoyo_domain_info* %70, %struct.tomoyo_domain_info** %9, align 8
  %71 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %9, align 8
  %72 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %9, align 8
  %78 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i32 %76, i32 %79, i32 4)
  br label %81

81:                                               ; preds = %69, %66
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @tomoyo_get_name(i8* %82)
  %84 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %3, align 8
  br label %158

89:                                               ; preds = %81
  %90 = call i64 @mutex_lock_interruptible(i32* @tomoyo_policy_lock)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %112

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = call %struct.tomoyo_domain_info* @tomoyo_find_domain(i8* %94)
  store %struct.tomoyo_domain_info* %95, %struct.tomoyo_domain_info** %7, align 8
  %96 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %97 = icmp ne %struct.tomoyo_domain_info* %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = call %struct.tomoyo_domain_info* @tomoyo_commit_ok(%struct.tomoyo_domain_info* %6, i32 32)
  store %struct.tomoyo_domain_info* %99, %struct.tomoyo_domain_info** %7, align 8
  %100 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %101 = icmp ne %struct.tomoyo_domain_info* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %104 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %103, i32 0, i32 4
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %107 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %106, i32 0, i32 3
  %108 = call i32 @list_add_tail_rcu(i32* %107, i32* @tomoyo_domain_list)
  store i32 1, i32* %8, align 4
  br label %109

109:                                              ; preds = %102, %98
  br label %110

110:                                              ; preds = %109, %93
  %111 = call i32 @mutex_unlock(i32* @tomoyo_policy_lock)
  br label %112

112:                                              ; preds = %110, %92
  %113 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %6, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @tomoyo_put_name(i32 %114)
  %116 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %117 = icmp ne %struct.tomoyo_domain_info* %116, null
  br i1 %117, label %118, label %156

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %121
  %125 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %126 = load i32, i32* @TOMOYO_MAC_FILE_EXECUTE, align 4
  %127 = call i32 @tomoyo_init_request_info(%struct.tomoyo_request_info* %10, %struct.tomoyo_domain_info* %125, i32 %126)
  %128 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %10, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %130 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @tomoyo_write_log(%struct.tomoyo_request_info* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %132)
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %149, %124
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @TOMOYO_MAX_ACL_GROUPS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  %141 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @test_bit(i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @tomoyo_write_log(%struct.tomoyo_request_info* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %145, %138
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %134

152:                                              ; preds = %134
  %153 = load i32, i32* @TOMOYO_STAT_POLICY_UPDATES, align 4
  %154 = call i32 @tomoyo_update_stat(i32 %153)
  br label %155

155:                                              ; preds = %152, %121
  br label %156

156:                                              ; preds = %155, %118, %112
  %157 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %7, align 8
  store %struct.tomoyo_domain_info* %157, %struct.tomoyo_domain_info** %3, align 8
  br label %158

158:                                              ; preds = %156, %88, %65, %57, %49, %37, %35
  %159 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %3, align 8
  ret %struct.tomoyo_domain_info* %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_find_domain(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @tomoyo_correct_domain(i8*) #2

declare dso_local i64 @tomoyo_namespace_jump(i8*) #2

declare dso_local %struct.TYPE_2__* @tomoyo_assign_namespace(i8*) #2

declare dso_local %struct.tomoyo_domain_info* @tomoyo_domain(...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @tomoyo_get_name(i8*) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local %struct.tomoyo_domain_info* @tomoyo_commit_ok(%struct.tomoyo_domain_info*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @tomoyo_put_name(i32) #2

declare dso_local i32 @tomoyo_init_request_info(%struct.tomoyo_request_info*, %struct.tomoyo_domain_info*, i32) #2

declare dso_local i32 @tomoyo_write_log(%struct.tomoyo_request_info*, i8*, i32) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @tomoyo_update_stat(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

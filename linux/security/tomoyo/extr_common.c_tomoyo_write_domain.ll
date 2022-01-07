; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_domain.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tomoyo_domain_info* }
%struct.tomoyo_domain_info = type { i32*, i32, i32, i64, %struct.tomoyo_policy_namespace* }
%struct.tomoyo_policy_namespace = type { i64* }

@.str = private unnamed_addr constant [8 x i8] c"select \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"use_profile %u\00", align 1
@TOMOYO_MAX_PROFILES = common dso_local global i32 0, align 4
@tomoyo_policy_loaded = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"use_group %u\0A\00", align 1
@TOMOYO_MAX_ACL_GROUPS = common dso_local global i32 0, align 4
@TOMOYO_MAX_DOMAIN_INFO_FLAGS = common dso_local global i32 0, align 4
@tomoyo_dif = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_domain(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tomoyo_policy_namespace*, align 8
  %6 = alloca %struct.tomoyo_domain_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %12 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %17, align 8
  store %struct.tomoyo_domain_info* %18, %struct.tomoyo_domain_info** %6, align 8
  %19 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = call i64 @tomoyo_str_starts(i8** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi i1 [ false, %1 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 60
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @tomoyo_delete_domain(i8* %39)
  store i32 %40, i32* %10, align 4
  br label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call %struct.tomoyo_domain_info* @tomoyo_find_domain(i8* %45)
  store %struct.tomoyo_domain_info* %46, %struct.tomoyo_domain_info** %6, align 8
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call %struct.tomoyo_domain_info* @tomoyo_assign_domain(i8* %48, i32 0)
  store %struct.tomoyo_domain_info* %49, %struct.tomoyo_domain_info** %6, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %53 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %54 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.tomoyo_domain_info* %52, %struct.tomoyo_domain_info** %55, align 8
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %28
  %58 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %59 = icmp ne %struct.tomoyo_domain_info* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %160

63:                                               ; preds = %57
  %64 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %65 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %64, i32 0, i32 4
  %66 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %65, align 8
  store %struct.tomoyo_policy_namespace* %66, %struct.tomoyo_policy_namespace** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @sscanf(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @TOMOYO_MAX_PROFILES, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32, i32* @tomoyo_policy_loaded, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %79 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %77, %74
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %93 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %77
  store i32 0, i32* %2, align 4
  br label %160

96:                                               ; preds = %70, %63
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @sscanf(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @TOMOYO_MAX_ACL_GROUPS, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %110 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @set_bit(i32 %108, i32 %111)
  br label %119

113:                                              ; preds = %104
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %116 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @clear_bit(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %107
  store i32 0, i32* %2, align 4
  br label %160

120:                                              ; preds = %100, %96
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @TOMOYO_MAX_DOMAIN_INFO_FLAGS, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %121
  %126 = load i8**, i8*** @tomoyo_dif, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = sub nsw i64 %134, 1
  %136 = call i64 @strncmp(i8* %131, i8* %132, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %150

139:                                              ; preds = %125
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %145 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  store i32 0, i32* %2, align 4
  br label %160

150:                                              ; preds = %138
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %121

153:                                              ; preds = %121
  %154 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %155 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %156 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %155, i32 0, i32 1
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @tomoyo_write_domain2(%struct.tomoyo_policy_namespace* %154, i32* %156, i8* %157, i32 %158)
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %153, %139, %119, %95, %60, %51
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @tomoyo_str_starts(i8**, i8*) #1

declare dso_local i32 @tomoyo_delete_domain(i8*) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_find_domain(i8*) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_assign_domain(i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tomoyo_write_domain2(%struct.tomoyo_policy_namespace*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

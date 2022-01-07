; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c" argv[]={ \22\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" exec={ realpath=\22\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" symlink.target=\22\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" exec.%s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" exec.argv[0]=%s\00", align 1
@TOMOYO_STAT_POLICY_UPDATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_domain_info*, i8*)* @tomoyo_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_add_entry(%struct.tomoyo_domain_info* %0, i8* %1) #0 {
  %3 = alloca %struct.tomoyo_domain_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 10)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %131

16:                                               ; preds = %2
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %131

23:                                               ; preds = %16
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 102
  br i1 %32, label %33, label %78

33:                                               ; preds = %23
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 10
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @tomoyo_truncate(i8* %41)
  %43 = add nsw i64 %42, 14
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @tomoyo_truncate(i8* %56)
  %58 = add nsw i64 %57, 6
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i8*, i8** %4, align 8
  %65 = call i8* @strstr(i8* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i64 @tomoyo_truncate(i8* %70)
  %72 = add nsw i64 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %68, %63
  br label %78

78:                                               ; preds = %77, %23
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @GFP_NOFS, align 4
  %81 = call i8* @kmalloc(i32 %79, i32 %80)
  store i8* %81, i8** %5, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %131

85:                                               ; preds = %78
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @snprintf(i8* %86, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @tomoyo_addprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %93, %85
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @tomoyo_addprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @tomoyo_addprintf(i8* %110, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @tomoyo_normalize_line(i8* %115)
  %117 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %3, align 8
  %118 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %3, align 8
  %121 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %120, i32 0, i32 0
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @tomoyo_write_domain2(i32 %119, i32* %121, i8* %122, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @TOMOYO_STAT_POLICY_UPDATES, align 4
  %127 = call i32 @tomoyo_update_stat(i32 %126)
  br label %128

128:                                              ; preds = %125, %114
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @kfree(i8* %129)
  br label %131

131:                                              ; preds = %128, %84, %22, %15
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @tomoyo_truncate(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @tomoyo_addprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @tomoyo_normalize_line(i8*) #1

declare dso_local i32 @tomoyo_write_domain2(i32, i32*, i8*, i32) #1

declare dso_local i32 @tomoyo_update_stat(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

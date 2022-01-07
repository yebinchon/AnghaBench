; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache = type { i32, i32 }
%struct.probe_cache_entry = type { i32, i32, i32, i32, i64 }

@MAX_CMDLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_cache*)* @probe_cache__load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_cache__load(%struct.probe_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.probe_cache*, align 8
  %4 = alloca %struct.probe_cache_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.probe_cache* %0, %struct.probe_cache** %3, align 8
  store %struct.probe_cache_entry* null, %struct.probe_cache_entry** %4, align 8
  %12 = load i32, i32* @MAX_CMDLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.probe_cache*, %struct.probe_cache** %3, align 8
  %17 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dup(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %124

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @fdopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %124

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %118, %35
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @feof(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %119

41:                                               ; preds = %36
  %42 = load i32, i32* @MAX_CMDLEN, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @fgets(i8* %15, i32 %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %119

47:                                               ; preds = %41
  %48 = call i8* @strchr(i8* %15, i8 signext 10)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds i8, i8* %15, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 35
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, i8* %15, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %107

63:                                               ; preds = %58, %53
  %64 = call %struct.probe_cache_entry* @probe_cache_entry__new(i32* null)
  store %struct.probe_cache_entry* %64, %struct.probe_cache_entry** %4, align 8
  %65 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %66 = icmp ne %struct.probe_cache_entry* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %120

70:                                               ; preds = %63
  %71 = getelementptr inbounds i8, i8* %15, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %77 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = getelementptr inbounds i8, i8* %15, i64 1
  %80 = call i64 @strdup(i8* %79)
  %81 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %82 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %84 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = getelementptr inbounds i8, i8* %15, i64 1
  %89 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %90 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %89, i32 0, i32 3
  %91 = call i32 @parse_perf_probe_command(i8* %88, i32* %90)
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %78
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %100 = call i32 @probe_cache_entry__delete(%struct.probe_cache_entry* %99)
  br label %120

101:                                              ; preds = %95
  %102 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %103 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %102, i32 0, i32 2
  %104 = load %struct.probe_cache*, %struct.probe_cache** %3, align 8
  %105 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  br label %118

107:                                              ; preds = %58
  %108 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %109 = icmp ne %struct.probe_cache_entry* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %120

113:                                              ; preds = %107
  %114 = load %struct.probe_cache_entry*, %struct.probe_cache_entry** %4, align 8
  %115 = getelementptr inbounds %struct.probe_cache_entry, %struct.probe_cache_entry* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strlist__add(i32 %116, i8* %15)
  br label %118

118:                                              ; preds = %113, %101
  br label %36

119:                                              ; preds = %46, %36
  br label %120

120:                                              ; preds = %119, %110, %98, %67
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @fclose(i32* %121)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %30, %22
  %125 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dup(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.probe_cache_entry* @probe_cache_entry__new(i32*) #2

declare dso_local i64 @strdup(i8*) #2

declare dso_local i32 @parse_perf_probe_command(i8*, i32*) #2

declare dso_local i32 @probe_cache_entry__delete(%struct.probe_cache_entry*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @strlist__add(i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

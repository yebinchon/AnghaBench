; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nametoid_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_nametoid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.ent = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@IDMAP_TYPE_USER = common dso_local global i32 0, align 4
@IDMAP_TYPE_GROUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @nametoid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nametoid_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ent, align 8
  %9 = alloca %struct.ent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %138

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %138

40:                                               ; preds = %26
  %41 = call i32 @memset(%struct.ent* %8, i32 0, i32 32)
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @qword_get(i8** %6, i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IDMAP_NAMESZ, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %40
  br label %134

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @memcpy(i32 %54, i8* %55, i32 4)
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @qword_get(i8** %6, i8* %57, i32 %58)
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %134

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @IDMAP_TYPE_USER, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = call i32 @qword_get(i8** %6, i8* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @IDMAP_NAMESZ, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %70
  br label %134

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @memcpy(i32 %85, i8* %86, i32 4)
  %88 = call i64 @get_expiry(i8** %6)
  %89 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %134

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 1
  %98 = call i32 @get_int(i8** %6, i32* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %134

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* @CACHE_NEGATIVE, align 4
  %111 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  %117 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %118 = call %struct.ent* @nametoid_lookup(%struct.cache_detail* %117, %struct.ent* %8)
  store %struct.ent* %118, %struct.ent** %9, align 8
  %119 = load %struct.ent*, %struct.ent** %9, align 8
  %120 = icmp eq %struct.ent* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %134

122:                                              ; preds = %114
  %123 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %124 = load %struct.ent*, %struct.ent** %9, align 8
  %125 = call %struct.ent* @nametoid_update(%struct.cache_detail* %123, %struct.ent* %8, %struct.ent* %124)
  store %struct.ent* %125, %struct.ent** %9, align 8
  %126 = load %struct.ent*, %struct.ent** %9, align 8
  %127 = icmp eq %struct.ent* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %134

129:                                              ; preds = %122
  %130 = load %struct.ent*, %struct.ent** %9, align 8
  %131 = getelementptr inbounds %struct.ent, %struct.ent* %130, i32 0, i32 0
  %132 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %133 = call i32 @cache_put(%struct.TYPE_2__* %131, %struct.cache_detail* %132)
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %129, %128, %121, %103, %95, %82, %61, %51
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %37, %23
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ent*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ent* @nametoid_lookup(%struct.cache_detail*, %struct.ent*) #1

declare dso_local %struct.ent* @nametoid_update(%struct.cache_detail*, %struct.ent*, %struct.ent*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, %struct.cache_detail*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

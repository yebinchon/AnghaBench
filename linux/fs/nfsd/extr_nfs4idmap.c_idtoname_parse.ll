; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idtoname_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_idtoname_parse.c"
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
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @idtoname_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtoname_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ent, align 8
  %9 = alloca %struct.ent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %148

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %148

41:                                               ; preds = %27
  %42 = call i32 @memset(%struct.ent* %8, i32 0, i32 32)
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @qword_get(i8** %6, i8* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IDMAP_NAMESZ, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %41
  br label %144

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @memcpy(i32 %55, i8* %56, i32 4)
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @qword_get(i8** %6, i8* %58, i32 %59)
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %144

63:                                               ; preds = %53
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @IDMAP_TYPE_USER, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i32 @qword_get(i8** %6, i8* %74, i32 %75)
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %144

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @simple_strtoul(i8* %80, i8** %11, i32 10)
  %82 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %144

87:                                               ; preds = %79
  %88 = call i64 @get_expiry(i8** %6)
  %89 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %144

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %100 = call %struct.ent* @idtoname_lookup(%struct.cache_detail* %99, %struct.ent* %8)
  store %struct.ent* %100, %struct.ent** %9, align 8
  %101 = load %struct.ent*, %struct.ent** %9, align 8
  %102 = icmp ne %struct.ent* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %144

104:                                              ; preds = %96
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %13, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = call i32 @qword_get(i8** %6, i8* %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @IDMAP_NAMESZ, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %104
  br label %144

117:                                              ; preds = %112
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @CACHE_NEGATIVE, align 4
  %122 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %130

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.ent, %struct.ent* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @memcpy(i32 %127, i8* %128, i32 4)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %13, align 4
  %133 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %134 = load %struct.ent*, %struct.ent** %9, align 8
  %135 = call %struct.ent* @idtoname_update(%struct.cache_detail* %133, %struct.ent* %8, %struct.ent* %134)
  store %struct.ent* %135, %struct.ent** %9, align 8
  %136 = load %struct.ent*, %struct.ent** %9, align 8
  %137 = icmp eq %struct.ent* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %144

139:                                              ; preds = %130
  %140 = load %struct.ent*, %struct.ent** %9, align 8
  %141 = getelementptr inbounds %struct.ent, %struct.ent* %140, i32 0, i32 0
  %142 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %143 = call i32 @cache_put(%struct.TYPE_2__* %141, %struct.cache_detail* %142)
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %139, %138, %116, %103, %95, %86, %78, %62, %52
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @kfree(i8* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %38, %24
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ent*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local %struct.ent* @idtoname_lookup(%struct.cache_detail*, %struct.ent*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ent* @idtoname_update(%struct.cache_detail*, %struct.ent*, %struct.ent*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, %struct.cache_detail*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

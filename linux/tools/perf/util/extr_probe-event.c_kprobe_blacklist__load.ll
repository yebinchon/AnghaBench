; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kprobe_blacklist__load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kprobe_blacklist__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.kprobe_blacklist_node = type { i32, i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/kprobes/blacklist\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"0x%lx-0x%lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Blacklist: 0x%lx-0x%lx, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*)* @kprobe_blacklist__load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kprobe_blacklist__load(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.kprobe_blacklist_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %12 = call i8* (...) @debugfs__mountpoint()
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOTSUP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %127

22:                                               ; preds = %1
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @e_snprintf(i8* %16, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %127

30:                                               ; preds = %22
  %31 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %127

37:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %104, %37
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @fgets(i8* %16, i32 %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %117

43:                                               ; preds = %38
  %44 = call %struct.kprobe_blacklist_node* @zalloc(i32 16)
  store %struct.kprobe_blacklist_node* %44, %struct.kprobe_blacklist_node** %4, align 8
  %45 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %46 = icmp ne %struct.kprobe_blacklist_node* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %52 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %51, i32 0, i32 3
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %55 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %54, i32 0, i32 3
  %56 = load %struct.list_head*, %struct.list_head** %3, align 8
  %57 = call i32 @list_add_tail(i32* %55, %struct.list_head* %56)
  %58 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %59 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %58, i32 0, i32 2
  %60 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %61 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %60, i32 0, i32 1
  %62 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %59, i32* %61)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %117

67:                                               ; preds = %50
  %68 = call i8* @strchr(i8* %16, i8 signext 9)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %83, %71
  br label %92

91:                                               ; preds = %67
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strdup(i8* %93)
  %95 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %96 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %98 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %117

104:                                              ; preds = %92
  %105 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %106 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %109 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kprobe_blacklist_node*, %struct.kprobe_blacklist_node** %4, align 8
  %112 = getelementptr inbounds %struct.kprobe_blacklist_node, %struct.kprobe_blacklist_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pr_debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110, i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %38

117:                                              ; preds = %101, %64, %47, %38
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.list_head*, %struct.list_head** %3, align 8
  %122 = call i32 @kprobe_blacklist__delete(%struct.list_head* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @fclose(i32* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %127

127:                                              ; preds = %123, %34, %28, %19
  %128 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i8* @debugfs__mountpoint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local %struct.kprobe_blacklist_node* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @pr_debug2(i8*, i32, i32, i32) #1

declare dso_local i32 @kprobe_blacklist__delete(%struct.list_head*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, i32, i32, i32, i32 }
%struct.ubifs_znode = type { i64, i32, i32, %struct.ubifs_zbranch*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_zbranch* }

@DBG_KEY_BUF_LEN = common dso_local global i32 0, align 4
@dbg_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"znode %p, LEB %d:%d len %d parent %p iip %d level %d child_cnt %d flags %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"zbranches:\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\09%d: znode %p LEB %d:%d len %d key %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\09%d: LNC %p LEB %d:%d len %d key %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %4, align 8
  %10 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @spin_lock(i32* @dbg_lock)
  %15 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %16 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %23, align 8
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %24, i64 %27
  store %struct.ubifs_zbranch* %28, %struct.ubifs_zbranch** %6, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  store %struct.ubifs_zbranch* %31, %struct.ubifs_zbranch** %6, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %34 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %38 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %44 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %43, i32 0, i32 5
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %53 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), %struct.ubifs_znode* %33, i32 %36, i32 %39, i32 %42, %struct.TYPE_2__* %45, i64 %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %32
  %64 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %65 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63, %32
  %72 = call i32 @spin_unlock(i32* @dbg_lock)
  store i32 1, i32* %9, align 4
  br label %138

73:                                               ; preds = %63
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %133, %73
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %136

81:                                               ; preds = %75
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %82, i32 0, i32 3
  %84 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %84, i64 %86
  store %struct.ubifs_zbranch* %87, %struct.ubifs_zbranch** %6, align 8
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %89 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %95 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %98 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %101 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %104 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %107 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %108 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %107, i32 0, i32 0
  %109 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %110 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %106, i32* %108, i8* %13, i32 %109)
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %110)
  br label %132

112:                                              ; preds = %81
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %115 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %118 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %121 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %124 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %127 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %127, i32 0, i32 0
  %129 = load i32, i32* @DBG_KEY_BUF_LEN, align 4
  %130 = call i32 @dbg_snprintf_key(%struct.ubifs_info* %126, i32* %128, i8* %13, i32 %129)
  %131 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122, i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %112, %92
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %75

136:                                              ; preds = %75
  %137 = call i32 @spin_unlock(i32* @dbg_lock)
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %136, %71
  %139 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %9, align 4
  switch i32 %140, label %142 [
    i32 0, label %141
    i32 1, label %141
  ]

141:                                              ; preds = %138, %138
  ret void

142:                                              ; preds = %138
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @dbg_snprintf_key(%struct.ubifs_info*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

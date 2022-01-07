; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@append = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hostfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = load i32, i32* @FMODE_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %19, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %98, %28
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FMODE_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FMODE_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @dentry_name(i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %147

58:                                               ; preds = %47
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @append, align 4
  %63 = call i32 @open_file(i8* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @__putname(i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %147

70:                                               ; preds = %58
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %75, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = call i32 @close_file(i32* %11)
  store i32 0, i32* %3, align 4
  br label %147

89:                                               ; preds = %70
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %90, %94
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = call i32 @close_file(i32* %11)
  br label %35

110:                                              ; preds = %89
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %138

121:                                              ; preds = %110
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @replace_file(i32 %122, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = call i32 @close_file(i32* %11)
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %147

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %116
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.inode*, %struct.inode** %4, align 8
  %141 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %140)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call %struct.TYPE_4__* @HOSTFS_I(%struct.inode* %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = call i32 @mutex_unlock(i32* %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %138, %131, %83, %68, %55, %27
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_4__* @HOSTFS_I(%struct.inode*) #1

declare dso_local i8* @dentry_name(i32) #1

declare dso_local i32 @open_file(i8*, i32, i32, i32) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @close_file(i32*) #1

declare dso_local i32 @replace_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

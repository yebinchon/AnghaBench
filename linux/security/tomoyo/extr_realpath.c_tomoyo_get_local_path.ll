; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_local_path.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_local_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PROC_SUPER_MAGIC = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/self\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dev(%u,%u):\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*, i32)* @tomoyo_get_local_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_get_local_path(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @tomoyo_get_dentry_path(%struct.dentry* %21, i8* %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %4, align 8
  br label %153

30:                                               ; preds = %3
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PROC_SUPER_MAGIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @simple_strtoul(i8* %43, i8** %10, i32 10)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %71

50:                                               ; preds = %41
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* @current, align 4
  %56 = load %struct.super_block*, %struct.super_block** %8, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @task_tgid_nr_ns(i32 %55, i32 %58)
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 -5
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %149

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @memmove(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  br label %71

71:                                               ; preds = %68, %53, %50, %41
  br label %120

72:                                               ; preds = %36, %30
  %73 = load %struct.super_block*, %struct.super_block** %8, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MAJOR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %120

79:                                               ; preds = %72
  %80 = load %struct.super_block*, %struct.super_block** %8, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.inode* @d_backing_inode(i32 %82)
  store %struct.inode* %83, %struct.inode** %12, align 8
  %84 = load %struct.inode*, %struct.inode** %12, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %120

91:                                               ; preds = %79
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = getelementptr inbounds %struct.super_block, %struct.super_block* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %15, align 4
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 63
  store i8 0, i8* %95, align 1
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @MAJOR(i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @MINOR(i32 %99)
  %101 = call i32 @snprintf(i8* %96, i32 63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %100)
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %103 = call i8* @strlen(i8* %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = icmp ult i8* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %91
  br label %149

114:                                              ; preds = %91
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @memmove(i8* %115, i8* %116, i32 %117)
  %119 = load i8*, i8** %9, align 8
  store i8* %119, i8** %4, align 8
  br label %153

120:                                              ; preds = %90, %78, %71
  %121 = load %struct.super_block*, %struct.super_block** %8, align 8
  %122 = getelementptr inbounds %struct.super_block, %struct.super_block* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %16, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = call i8* @strlen(i8* %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i8*, i8** %9, align 8
  %132 = sext i32 %130 to i64
  %133 = sub i64 0, %132
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8* %134, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  br label %149

139:                                              ; preds = %120
  %140 = load i8*, i8** %9, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @memmove(i8* %140, i8* %141, i32 %142)
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 58, i8* %147, align 1
  %148 = load i8*, i8** %9, align 8
  store i8* %148, i8** %4, align 8
  br label %153

149:                                              ; preds = %138, %113, %67
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  %152 = call i8* @ERR_PTR(i32 %151)
  store i8* %152, i8** %4, align 8
  br label %153

153:                                              ; preds = %149, %139, %114, %28
  %154 = load i8*, i8** %4, align 8
  ret i8* %154
}

declare dso_local i8* @tomoyo_get_dentry_path(%struct.dentry*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @task_tgid_nr_ns(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

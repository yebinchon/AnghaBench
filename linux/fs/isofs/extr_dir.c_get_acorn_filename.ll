; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_dir.c_get_acorn_filename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_dir.c_get_acorn_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32*, i32*, i32* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ARCHIMEDES\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%3.3x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_acorn_filename(%struct.iso_directory_record* %0, i8* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iso_directory_record*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %11 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i32 @isofs_name_translate(%struct.iso_directory_record* %11, i8* %12, %struct.inode* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

18:                                               ; preds = %3
  %19 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %20 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 24, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %35 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %33
  %45 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %46 = bitcast %struct.iso_directory_record* %45 to i8*
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %117

55:                                               ; preds = %44
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 95
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 19
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i8*, i8** %6, align 8
  store i8 33, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %60, %55
  %70 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %71 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %69
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 13
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %115

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 12
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 240
  %89 = icmp eq i32 %88, 240
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 44, i8* %94, align 1
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 12
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 15
  %105 = shl i32 %104, 8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 11
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %105, %109
  %111 = trunc i32 %110 to i8
  %112 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %111)
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %90, %83, %77, %69
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %53, %42, %17
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @isofs_name_translate(%struct.iso_directory_record*, i8*, %struct.inode*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

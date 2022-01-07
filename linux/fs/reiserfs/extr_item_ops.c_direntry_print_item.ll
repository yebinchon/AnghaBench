; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_print_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@direntry_print_item.namebuf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [31 x i8] c"\0A # %-15s%-30s%-15s%-15s%-15s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Key of pointed object\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Gen number\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%d:  %-15s%-15d%-15d%-15lld%-15lld(%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"VISIBLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item_head*, i8*)* @direntry_print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direntry_print_item(%struct.item_head* %0, i8* %1) #0 {
  %3 = alloca %struct.item_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_de_head*, align 8
  %8 = alloca i8*, align 8
  store %struct.item_head* %0, %struct.item_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.reiserfs_de_head*
  store %struct.reiserfs_de_head* %11, %struct.reiserfs_de_head** %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %85, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.item_head*, %struct.item_head** %3, align 8
  %15 = call i32 @ih_entry_count(%struct.item_head* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %22 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %21, i64 -1
  %23 = call i32 @deh_location(%struct.reiserfs_de_head* %22)
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.item_head*, %struct.item_head** %3, align 8
  %26 = call i32 @ih_item_len(%struct.item_head* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %23, %20 ], [ %26, %24 ]
  %29 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %30 = call i32 @deh_location(%struct.reiserfs_de_head* %29)
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %34 = call i32 @deh_location(%struct.reiserfs_de_head* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %27
  store i8 34, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 0), align 16
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %50, 77
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strncpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 1), i8* %53, i32 77)
  store i8 34, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 78), align 2
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 79), align 1
  br label %67

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @memcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 1), i8* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 %61
  store i8 34, i8* %62, align 1
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %55, %52
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %70 = call i32 @deh_dir_id(%struct.reiserfs_de_head* %69)
  %71 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %72 = call i32 @deh_objectid(%struct.reiserfs_de_head* %71)
  %73 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %74 = call i32 @deh_offset(%struct.reiserfs_de_head* %73)
  %75 = call i32 @GET_HASH_VALUE(i32 %74)
  %76 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %77 = call i32 @deh_offset(%struct.reiserfs_de_head* %76)
  %78 = call i32 @GET_GENERATION_NUMBER(i32 %77)
  %79 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %80 = call i64 @de_hidden(%struct.reiserfs_de_head* %79)
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @direntry_print_item.namebuf, i64 0, i64 0), i32 %70, i32 %72, i32 %75, i32 %78, i8* %83)
  br label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %89 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %88, i32 1
  store %struct.reiserfs_de_head* %89, %struct.reiserfs_de_head** %7, align 8
  br label %12

90:                                               ; preds = %12
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @deh_dir_id(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_objectid(%struct.reiserfs_de_head*) #1

declare dso_local i32 @GET_HASH_VALUE(i32) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @GET_GENERATION_NUMBER(i32) #1

declare dso_local i64 @de_hidden(%struct.reiserfs_de_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

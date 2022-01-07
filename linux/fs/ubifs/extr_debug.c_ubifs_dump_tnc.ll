; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_tnc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ubifs_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_znode = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"(pid %d) start dumping TNC tree\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"== Level %d ==\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"(pid %d) finish dumping TNC tree\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_tnc(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info* %10, i32 %14, %struct.ubifs_znode* null)
  store %struct.ubifs_znode* %15, %struct.ubifs_znode** %3, align 8
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %36, %1
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %23 = icmp ne %struct.ubifs_znode* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %39 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %37, %struct.ubifs_znode* %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %46 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info* %40, i32 %44, %struct.ubifs_znode* %45)
  store %struct.ubifs_znode* %46, %struct.ubifs_znode** %3, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info*, i32, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___uprobe_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___uprobe_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uprobe_consumer = type { i32, i32 }
%struct.uprobe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.uprobe_consumer*)* @__uprobe_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uprobe_register(%struct.inode* %0, i64 %1, i64 %2, %struct.uprobe_consumer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uprobe_consumer*, align 8
  %10 = alloca %struct.uprobe*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.uprobe_consumer* %3, %struct.uprobe_consumer** %9, align 8
  %12 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %9, align 8
  %13 = getelementptr inbounds %struct.uprobe_consumer, %struct.uprobe_consumer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %9, align 8
  %18 = getelementptr inbounds %struct.uprobe_consumer, %struct.uprobe_consumer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %108

24:                                               ; preds = %16, %4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @shmem_mapping(%struct.TYPE_4__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %108

42:                                               ; preds = %33, %24
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i64 @i_size_read(%struct.inode* %44)
  %46 = icmp sgt i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %108

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %105, %50
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call %struct.uprobe* @alloc_uprobe(%struct.inode* %52, i64 %53, i64 %54)
  store %struct.uprobe* %55, %struct.uprobe** %10, align 8
  %56 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %57 = icmp ne %struct.uprobe* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %108

61:                                               ; preds = %51
  %62 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %63 = call i64 @IS_ERR(%struct.uprobe* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %67 = call i32 @PTR_ERR(%struct.uprobe* %66)
  store i32 %67, i32* %5, align 4
  br label %108

68:                                               ; preds = %61
  %69 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %70 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %69, i32 0, i32 0
  %71 = call i32 @down_write(i32* %70)
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %75 = call i32 @uprobe_is_active(%struct.uprobe* %74)
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %80 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %9, align 8
  %81 = call i32 @consumer_add(%struct.uprobe* %79, %struct.uprobe_consumer* %80)
  %82 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %83 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %9, align 8
  %84 = call i32 @register_for_each_vma(%struct.uprobe* %82, %struct.uprobe_consumer* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %89 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %9, align 8
  %90 = call i32 @__uprobe_unregister(%struct.uprobe* %88, %struct.uprobe_consumer* %89)
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %68
  %93 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %94 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %93, i32 0, i32 0
  %95 = call i32 @up_write(i32* %94)
  %96 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %97 = call i32 @put_uprobe(%struct.uprobe* %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %51

106:                                              ; preds = %92
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %65, %58, %47, %39, %21
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @shmem_mapping(%struct.TYPE_4__*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.uprobe* @alloc_uprobe(%struct.inode*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.uprobe*) #1

declare dso_local i32 @PTR_ERR(%struct.uprobe*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uprobe_is_active(%struct.uprobe*) #1

declare dso_local i32 @consumer_add(%struct.uprobe*, %struct.uprobe_consumer*) #1

declare dso_local i32 @register_for_each_vma(%struct.uprobe*, %struct.uprobe_consumer*) #1

declare dso_local i32 @__uprobe_unregister(%struct.uprobe*, %struct.uprobe_consumer*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @put_uprobe(%struct.uprobe*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

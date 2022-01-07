; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_anode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_anode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anode = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@ANODE_RD_AHEAD = common dso_local global i32 0, align 4
@ANODE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bad magic on anode %08x\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"self pointer invalid on anode %08x\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bad number of nodes in anode %08x\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"bad first_free pointer in anode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.anode* @hpfs_map_anode(%struct.super_block* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.anode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.anode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.TYPE_3__* @hpfs_sb(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @hpfs_chk_sectors(%struct.super_block* %15, i64 %16, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.anode* null, %struct.anode** %4, align 8
  br label %109

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %25 = load i32, i32* @ANODE_RD_AHEAD, align 4
  %26 = call %struct.anode* @hpfs_map_sector(%struct.super_block* %22, i64 %23, %struct.buffer_head** %24, i32 %25)
  store %struct.anode* %26, %struct.anode** %8, align 8
  %27 = icmp ne %struct.anode* %26, null
  br i1 %27, label %28, label %103

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call %struct.TYPE_3__* @hpfs_sb(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %102

34:                                               ; preds = %28
  %35 = load %struct.anode*, %struct.anode** %8, align 8
  %36 = getelementptr inbounds %struct.anode, %struct.anode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load i64, i64* @ANODE_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @hpfs_error(%struct.super_block* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %105

45:                                               ; preds = %34
  %46 = load %struct.anode*, %struct.anode** %8, align 8
  %47 = getelementptr inbounds %struct.anode, %struct.anode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32_to_cpu(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @hpfs_error(%struct.super_block* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %105

56:                                               ; preds = %45
  %57 = load %struct.anode*, %struct.anode** %8, align 8
  %58 = getelementptr inbounds %struct.anode, %struct.anode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.anode*, %struct.anode** %8, align 8
  %62 = getelementptr inbounds %struct.anode, %struct.anode* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = add i32 %60, %65
  %67 = load %struct.anode*, %struct.anode** %8, align 8
  %68 = getelementptr inbounds %struct.anode, %struct.anode* %67, i32 0, i32 0
  %69 = call i64 @bp_internal(%struct.TYPE_4__* %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 60, i32 40
  %73 = icmp ne i32 %66, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %56
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @hpfs_error(%struct.super_block* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  br label %105

78:                                               ; preds = %56
  %79 = load %struct.anode*, %struct.anode** %8, align 8
  %80 = getelementptr inbounds %struct.anode, %struct.anode* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = load %struct.anode*, %struct.anode** %8, align 8
  %85 = getelementptr inbounds %struct.anode, %struct.anode* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.anode*, %struct.anode** %8, align 8
  %89 = getelementptr inbounds %struct.anode, %struct.anode* %88, i32 0, i32 0
  %90 = call i64 @bp_internal(%struct.TYPE_4__* %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 8, i32 12
  %94 = mul nsw i32 %87, %93
  %95 = add nsw i32 8, %94
  %96 = icmp ne i32 %83, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %78
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @hpfs_error(%struct.super_block* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  br label %105

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %28
  br label %103

103:                                              ; preds = %102, %21
  %104 = load %struct.anode*, %struct.anode** %8, align 8
  store %struct.anode* %104, %struct.anode** %4, align 8
  br label %109

105:                                              ; preds = %97, %74, %52, %41
  %106 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %106, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  store %struct.anode* null, %struct.anode** %4, align 8
  br label %109

109:                                              ; preds = %105, %103, %19
  %110 = load %struct.anode*, %struct.anode** %4, align 8
  ret %struct.anode* %110
}

declare dso_local %struct.TYPE_3__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i64, i32, i8*) #1

declare dso_local %struct.anode* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64) #1

declare dso_local i64 @bp_internal(%struct.TYPE_4__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

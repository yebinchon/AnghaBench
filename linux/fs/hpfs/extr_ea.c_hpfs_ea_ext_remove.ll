; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_ea_ext_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_ea_ext_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.extended_attribute = type { i32 }
%struct.buffer_head = type { i32 }
%struct.anode = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"ea_indirect(ea) set while ea->valuelen!=8, %s %08x, pos %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_ea_ext_remove(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [268 x i8], align 16
  %11 = alloca %struct.extended_attribute*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.anode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %84, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %94

18:                                               ; preds = %14
  %19 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %20 = bitcast i8* %19 to %struct.extended_attribute*
  store %struct.extended_attribute* %20, %struct.extended_attribute** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hpfs_error(%struct.super_block* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %32)
  br label %120

34:                                               ; preds = %18
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %40 = call i64 @hpfs_ea_read(%struct.super_block* %35, i32 %36, i32 %37, i32 %38, i32 4, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %120

43:                                               ; preds = %34
  %44 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %45 = call i64 @ea_indirect(%struct.extended_attribute* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  %48 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %49 = call i32 @ea_valuelen(%struct.extended_attribute* %48)
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @hpfs_error(%struct.super_block* %52, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %57, i32 %58)
  br label %120

60:                                               ; preds = %47
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 4
  %66 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %67 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 9
  %70 = getelementptr inbounds [268 x i8], [268 x i8]* %10, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = call i64 @hpfs_ea_read(%struct.super_block* %61, i32 %62, i32 %63, i32 %65, i32 %69, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %120

75:                                               ; preds = %60
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %78 = call i32 @ea_sec(%struct.extended_attribute* %77)
  %79 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %80 = call i32 @ea_in_anode(%struct.extended_attribute* %79)
  %81 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %82 = call i32 @ea_len(%struct.extended_attribute* %81)
  %83 = call i32 @hpfs_ea_remove(%struct.super_block* %76, i32 %78, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %75, %43
  %85 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %86 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.extended_attribute*, %struct.extended_attribute** %11, align 8
  %89 = call i32 @ea_valuelen(%struct.extended_attribute* %88)
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 5
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %14

94:                                               ; preds = %14
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add i32 %100, 511
  %102 = lshr i32 %101, 9
  %103 = call i32 @hpfs_free_sectors(%struct.super_block* %98, i32 %99, i32 %102)
  br label %120

104:                                              ; preds = %94
  %105 = load %struct.super_block*, %struct.super_block** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %105, i32 %106, %struct.buffer_head** %12)
  store %struct.anode* %107, %struct.anode** %13, align 8
  %108 = icmp ne %struct.anode* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = load %struct.anode*, %struct.anode** %13, align 8
  %112 = getelementptr inbounds %struct.anode, %struct.anode* %111, i32 0, i32 0
  %113 = call i32 @hpfs_remove_btree(%struct.super_block* %110, i32* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @hpfs_free_sectors(%struct.super_block* %116, i32 %117, i32 1)
  br label %119

119:                                              ; preds = %109, %104
  br label %120

120:                                              ; preds = %25, %42, %51, %74, %119, %97
  ret void
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @ea_indirect(%struct.extended_attribute*) #1

declare dso_local i32 @ea_valuelen(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_in_anode(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"circular indirect block detected at block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i32*, i32*)* @ext4_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_free_data(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %18 = icmp ne %struct.buffer_head* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = call i32 @BUFFER_TRACE(%struct.buffer_head* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = call i32 @ext4_journal_get_write_access(i32* %22, %struct.buffer_head* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %121

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %15, align 8
  br label %31

31:                                               ; preds = %74, %29
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %15, align 8
  store i32* %46, i32** %13, align 8
  store i64 1, i64* %12, align 8
  br label %72

47:                                               ; preds = %41
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %49, %50
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %71

56:                                               ; preds = %47
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @ext4_clear_blocks(i32* %57, %struct.inode* %58, %struct.buffer_head* %59, i64 %60, i64 %61, i32* %62, i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %77

68:                                               ; preds = %56
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i32*, i32** %15, align 8
  store i32* %70, i32** %13, align 8
  store i64 1, i64* %12, align 8
  br label %71

71:                                               ; preds = %68, %53
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %15, align 8
  br label %31

77:                                               ; preds = %67, %31
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %12, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @ext4_clear_blocks(i32* %84, %struct.inode* %85, %struct.buffer_head* %86, i64 %87, i64 %88, i32* %89, i32* %90)
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %83, %80, %77
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %121

96:                                               ; preds = %92
  %97 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %98 = icmp ne %struct.buffer_head* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %101 = call i32 @BUFFER_TRACE(%struct.buffer_head* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32* @EXT4_JOURNAL(%struct.inode* %102)
  %104 = icmp eq i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = call i64 @bh2jh(%struct.buffer_head* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105, %99
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %113 = call i32 @ext4_handle_dirty_metadata(i32* %110, %struct.inode* %111, %struct.buffer_head* %112)
  br label %120

114:                                              ; preds = %105
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @EXT4_ERROR_INODE(%struct.inode* %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %27, %95, %120, %96
  ret void
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_clear_blocks(i32*, %struct.inode*, %struct.buffer_head*, i64, i64, i32*, i32*) #1

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_inc_ref_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_inc_ref_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_entry = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"inc ref error %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cleanup ea_ino %u iget error %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cleanup dec ref error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_xattr_entry*)* @ext4_xattr_inode_inc_ref_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_inc_ref_all(i32* %0, %struct.inode* %1, %struct.ext4_xattr_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_xattr_entry*, align 8
  %10 = alloca %struct.ext4_xattr_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_xattr_entry* %2, %struct.ext4_xattr_entry** %7, align 8
  %14 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  store %struct.ext4_xattr_entry* %14, %struct.ext4_xattr_entry** %9, align 8
  br label %15

15:                                               ; preds = %56, %3
  %16 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %17 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %22 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 @ext4_xattr_inode_iget(%struct.inode* %31, i32 %32, i32 %36, %struct.inode** %8)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %60

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @ext4_xattr_inode_inc_ref(i32* %42, %struct.inode* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ext4_warning_inode(%struct.inode* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @iput(%struct.inode* %54)
  br label %56

56:                                               ; preds = %53, %25
  %57 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %58 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %57)
  store %struct.ext4_xattr_entry* %58, %struct.ext4_xattr_entry** %9, align 8
  br label %15

59:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %113

60:                                               ; preds = %47, %40
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  store %struct.ext4_xattr_entry* %62, %struct.ext4_xattr_entry** %10, align 8
  %63 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  store %struct.ext4_xattr_entry* %63, %struct.ext4_xattr_entry** %9, align 8
  br label %64

64:                                               ; preds = %108, %60
  %65 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %66 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %10, align 8
  %67 = icmp ne %struct.ext4_xattr_entry* %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %64
  %69 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %70 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %108

74:                                               ; preds = %68
  %75 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %76 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %82 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = call i32 @ext4_xattr_inode_iget(%struct.inode* %79, i32 %80, i32 %84, %struct.inode** %8)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @ext4_warning(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  br label %108

95:                                               ; preds = %74
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = call i32 @ext4_xattr_inode_dec_ref(i32* %96, %struct.inode* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ext4_warning_inode(%struct.inode* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @iput(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %88, %73
  %109 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %110 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %109)
  store %struct.ext4_xattr_entry* %110, %struct.ext4_xattr_entry** %9, align 8
  br label %64

111:                                              ; preds = %64
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %59
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_xattr_inode_iget(%struct.inode*, i32, i32, %struct.inode**) #1

declare dso_local i32 @ext4_xattr_inode_inc_ref(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32, i32) #1

declare dso_local i32 @ext4_xattr_inode_dec_ref(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fuse_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fuse_attr*)* @fuse_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_init_inode(%struct.inode* %0, %struct.fuse_attr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fuse_attr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %4, align 8
  %5 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @S_IFMT, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %36 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISREG(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i32 @fuse_init_common(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @fuse_init_file_inode(%struct.inode* %49)
  br label %110

51:                                               ; preds = %2
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @fuse_init_dir(%struct.inode* %58)
  br label %109

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISLNK(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = call i32 @fuse_init_symlink(%struct.inode* %67)
  br label %108

69:                                               ; preds = %60
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISCHR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %69
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @S_ISBLK(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISFIFO(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISSOCK(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87, %81, %75, %69
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call i32 @fuse_init_common(%struct.inode* %94)
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %101 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @new_decode_dev(i32 %102)
  %104 = call i32 @init_special_inode(%struct.inode* %96, i32 %99, i32 %103)
  br label %107

105:                                              ; preds = %87
  %106 = call i32 (...) @BUG()
  br label %107

107:                                              ; preds = %105, %93
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108, %57
  br label %110

110:                                              ; preds = %109, %46
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fuse_init_common(%struct.inode*) #1

declare dso_local i32 @fuse_init_file_inode(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fuse_init_dir(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fuse_init_symlink(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openpromfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openpromfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }
%struct.op_inode_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { %struct.property*, %struct.device_node*, i32, i32, %struct.device_node*, %struct.TYPE_4__* }
%struct.property = type { i8*, %struct.property*, i32 }
%struct.TYPE_4__ = type { i32 }

@op_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OPENPROM_ROOT_INO = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @openpromfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openpromfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.op_inode_info*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.op_inode_info* @OP_I(%struct.inode* %13)
  store %struct.op_inode_info* %14, %struct.op_inode_info** %6, align 8
  %15 = load %struct.op_inode_info*, %struct.op_inode_info** %6, align 8
  %16 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = call i32 @mutex_lock(i32* @op_mutex)
  %20 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %21 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DT_DIR, align 4
  %30 = call i32 @dir_emit(%struct.dir_context* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %163

33:                                               ; preds = %24
  %34 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %35 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %38 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = getelementptr inbounds %struct.device_node, %struct.device_node* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @OPENPROM_ROOT_INO, align 4
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  %57 = load i32, i32* @DT_DIR, align 4
  %58 = call i32 @dir_emit(%struct.dir_context* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %163

61:                                               ; preds = %55
  %62 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %63 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %62, i32 0, i32 0
  store i32 2, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %36
  %65 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %66 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 2
  store i32 %68, i32* %10, align 4
  %69 = load %struct.device_node*, %struct.device_node** %7, align 8
  %70 = getelementptr inbounds %struct.device_node, %struct.device_node* %69, i32 0, i32 4
  %71 = load %struct.device_node*, %struct.device_node** %70, align 8
  store %struct.device_node* %71, %struct.device_node** %8, align 8
  br label %72

72:                                               ; preds = %80, %64
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.device_node*, %struct.device_node** %8, align 8
  %77 = icmp ne %struct.device_node* %76, null
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load %struct.device_node*, %struct.device_node** %8, align 8
  %82 = getelementptr inbounds %struct.device_node, %struct.device_node* %81, i32 0, i32 1
  %83 = load %struct.device_node*, %struct.device_node** %82, align 8
  store %struct.device_node* %83, %struct.device_node** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %10, align 4
  br label %72

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %108, %86
  %88 = load %struct.device_node*, %struct.device_node** %8, align 8
  %89 = icmp ne %struct.device_node* %88, null
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %92 = load %struct.device_node*, %struct.device_node** %8, align 8
  %93 = getelementptr inbounds %struct.device_node, %struct.device_node* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @kbasename(i32 %94)
  %96 = load %struct.device_node*, %struct.device_node** %8, align 8
  %97 = getelementptr inbounds %struct.device_node, %struct.device_node* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @kbasename(i32 %98)
  %100 = call i32 @strlen(i8* %99)
  %101 = load %struct.device_node*, %struct.device_node** %8, align 8
  %102 = getelementptr inbounds %struct.device_node, %struct.device_node* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DT_DIR, align 4
  %105 = call i32 @dir_emit(%struct.dir_context* %91, i8* %95, i32 %100, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %90
  br label %163

108:                                              ; preds = %90
  %109 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %110 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.device_node*, %struct.device_node** %8, align 8
  %114 = getelementptr inbounds %struct.device_node, %struct.device_node* %113, i32 0, i32 1
  %115 = load %struct.device_node*, %struct.device_node** %114, align 8
  store %struct.device_node* %115, %struct.device_node** %8, align 8
  br label %87

116:                                              ; preds = %87
  %117 = load %struct.device_node*, %struct.device_node** %7, align 8
  %118 = getelementptr inbounds %struct.device_node, %struct.device_node* %117, i32 0, i32 0
  %119 = load %struct.property*, %struct.property** %118, align 8
  store %struct.property* %119, %struct.property** %9, align 8
  br label %120

120:                                              ; preds = %128, %116
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.property*, %struct.property** %9, align 8
  %125 = icmp ne %struct.property* %124, null
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i1 [ false, %120 ], [ %125, %123 ]
  br i1 %127, label %128, label %134

128:                                              ; preds = %126
  %129 = load %struct.property*, %struct.property** %9, align 8
  %130 = getelementptr inbounds %struct.property, %struct.property* %129, i32 0, i32 1
  %131 = load %struct.property*, %struct.property** %130, align 8
  store %struct.property* %131, %struct.property** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %10, align 4
  br label %120

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %154, %134
  %136 = load %struct.property*, %struct.property** %9, align 8
  %137 = icmp ne %struct.property* %136, null
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  %139 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %140 = load %struct.property*, %struct.property** %9, align 8
  %141 = getelementptr inbounds %struct.property, %struct.property* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.property*, %struct.property** %9, align 8
  %144 = getelementptr inbounds %struct.property, %struct.property* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strlen(i8* %145)
  %147 = load %struct.property*, %struct.property** %9, align 8
  %148 = getelementptr inbounds %struct.property, %struct.property* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @DT_REG, align 4
  %151 = call i32 @dir_emit(%struct.dir_context* %139, i8* %142, i32 %146, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %138
  br label %163

154:                                              ; preds = %138
  %155 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %156 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.property*, %struct.property** %9, align 8
  %160 = getelementptr inbounds %struct.property, %struct.property* %159, i32 0, i32 1
  %161 = load %struct.property*, %struct.property** %160, align 8
  store %struct.property* %161, %struct.property** %9, align 8
  br label %135

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162, %153, %107, %60, %32
  %164 = call i32 @mutex_unlock(i32* @op_mutex)
  ret i32 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.op_inode_info* @OP_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i8* @kbasename(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

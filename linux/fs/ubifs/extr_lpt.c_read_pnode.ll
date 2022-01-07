; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_read_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_read_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32, i32, i8* }
%struct.ubifs_nnode = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { i32, %struct.ubifs_nnode*, i8*, %struct.ubifs_lprops* }
%struct.ubifs_lprops = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error %d reading pnode at %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"calc num: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_nnode*, i32)* @read_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  %9 = alloca %struct.ubifs_pnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ubifs_pnode* null, %struct.ubifs_pnode** %9, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %19, i32 0, i32 0
  %21 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %21, i64 %23
  store %struct.ubifs_nbranch* %24, %struct.ubifs_nbranch** %8, align 8
  %25 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %26 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.ubifs_pnode* @kzalloc(i32 32, i32 %31)
  store %struct.ubifs_pnode* %32, %struct.ubifs_pnode** %9, align 8
  %33 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %34 = icmp ne %struct.ubifs_pnode* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %161

38:                                               ; preds = %3
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @calc_pnode_num_from_parent(%struct.ubifs_info* %47, %struct.ubifs_nnode* %48, i32 %49)
  %51 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %52 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %60 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %59, i32 0, i32 3
  %61 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %61, i64 %63
  store %struct.ubifs_lprops* %64, %struct.ubifs_lprops** %15, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %69 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %71 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %72 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %70, %struct.ubifs_lprops* %71)
  %73 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %74 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %54

78:                                               ; preds = %54
  br label %100

79:                                               ; preds = %38
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ubifs_leb_read(%struct.ubifs_info* %80, i32 %81, i8* %82, i32 %83, i32 %86, i32 1)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %138

91:                                               ; preds = %79
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %95 = call i32 @unpack_pnode(%struct.ubifs_info* %92, i8* %93, %struct.ubifs_pnode* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %138

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %102 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %103 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @validate_pnode(%struct.ubifs_info* %101, %struct.ubifs_pnode* %102, %struct.ubifs_nnode* %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %138

109:                                              ; preds = %100
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %109
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %116 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i8* @calc_pnode_num_from_parent(%struct.ubifs_info* %115, %struct.ubifs_nnode* %116, i32 %117)
  %119 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %120 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %114, %109
  %122 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %123 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %124 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %123, i32 0, i32 2
  store %struct.ubifs_pnode* %122, %struct.ubifs_pnode** %124, align 8
  %125 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %126 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %127 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %126, i32 0, i32 1
  store %struct.ubifs_nnode* %125, %struct.ubifs_nnode** %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %130 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %132 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %133 = call i32 @set_pnode_lnum(%struct.ubifs_info* %131, %struct.ubifs_pnode* %132)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  store i32 0, i32* %4, align 4
  br label %161

138:                                              ; preds = %108, %98, %90
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (%struct.ubifs_info*, i8*, i8*, ...) @ubifs_err(%struct.ubifs_info* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %142, i32 %143, i32 %144)
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %147 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %148 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @ubifs_dump_pnode(%struct.ubifs_info* %146, %struct.ubifs_pnode* %147, %struct.ubifs_nnode* %148, i32 %149)
  %151 = call i32 (...) @dump_stack()
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %154 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i8* @calc_pnode_num_from_parent(%struct.ubifs_info* %153, %struct.ubifs_nnode* %154, i32 %155)
  %157 = call i32 (%struct.ubifs_info*, i8*, i8*, ...) @ubifs_err(%struct.ubifs_info* %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  %158 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %9, align 8
  %159 = call i32 @kfree(%struct.ubifs_pnode* %158)
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %138, %121, %35
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.ubifs_pnode* @kzalloc(i32, i32) #1

declare dso_local i8* @calc_pnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_pnode(%struct.ubifs_info*, i8*, %struct.ubifs_pnode*) #1

declare dso_local i32 @validate_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @set_pnode_lnum(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i8*, ...) #1

declare dso_local i32 @ubifs_dump_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kfree(%struct.ubifs_pnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

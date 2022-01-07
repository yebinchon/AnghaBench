; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_read_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_read_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, %struct.ubifs_nnode*, i64, i32, i8* }
%struct.ubifs_nnode = type { i32, %struct.ubifs_nnode*, i64, i8*, %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32, %struct.ubifs_nnode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error %d reading nnode at %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  %9 = alloca %struct.ubifs_nnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ubifs_nbranch* null, %struct.ubifs_nbranch** %8, align 8
  store %struct.ubifs_nnode* null, %struct.ubifs_nnode** %9, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 6
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %18 = icmp ne %struct.ubifs_nnode* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %20, i32 0, i32 4
  %22 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %22, i64 %24
  store %struct.ubifs_nbranch* %25, %struct.ubifs_nbranch** %8, align 8
  %26 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %27 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %32, %19
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call %struct.ubifs_nnode* @kzalloc(i32 40, i32 %40)
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %9, align 8
  %42 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %43 = icmp ne %struct.ubifs_nnode* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %134

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %56, %struct.ubifs_nnode* %57, i32 %58)
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %61 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %84

63:                                               ; preds = %47
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ubifs_leb_read(%struct.ubifs_info* %64, i32 %65, i8* %66, i32 %67, i32 %70, i32 1)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %134

75:                                               ; preds = %63
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %79 = call i32 @ubifs_unpack_nnode(%struct.ubifs_info* %76, i8* %77, %struct.ubifs_nnode* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %134

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %62
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %86 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %87 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @validate_nnode(%struct.ubifs_info* %85, %struct.ubifs_nnode* %86, %struct.ubifs_nnode* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %134

93:                                               ; preds = %84
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %100 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %99, %struct.ubifs_nnode* %100, i32 %101)
  %103 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %104 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %107 = icmp ne %struct.ubifs_nnode* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %110 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %111 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %110, i32 0, i32 2
  store %struct.ubifs_nnode* %109, %struct.ubifs_nnode** %111, align 8
  %112 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %113 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 1
  %116 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %117 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %127

118:                                              ; preds = %105
  %119 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 3
  store %struct.ubifs_nnode* %119, %struct.ubifs_nnode** %121, align 8
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %126 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %118, %108
  %128 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %129 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %130 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %129, i32 0, i32 1
  store %struct.ubifs_nnode* %128, %struct.ubifs_nnode** %130, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %133 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %4, align 4
  br label %144

134:                                              ; preds = %92, %82, %74, %44
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @ubifs_err(%struct.ubifs_info* %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = call i32 (...) @dump_stack()
  %141 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %142 = call i32 @kfree(%struct.ubifs_nnode* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %134, %127
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.ubifs_nnode* @kzalloc(i32, i32) #1

declare dso_local i8* @calc_nnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_unpack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @validate_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kfree(%struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

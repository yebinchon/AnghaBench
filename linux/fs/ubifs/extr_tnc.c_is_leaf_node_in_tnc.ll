; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_is_leaf_node_in_tnc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_is_leaf_node_in_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_zbranch = type { i32, i32, i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, i32, i32)* @is_leaf_node_in_tnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_leaf_node_in_tnc(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_zbranch*, align 8
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %19 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %20 = call i32 @is_hash_key(%struct.ubifs_info* %18, %union.ubifs_key* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %25 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %26 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %24, %union.ubifs_key* %25, %struct.ubifs_znode** %11, i32* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %157

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %157

35:                                               ; preds = %31
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %37 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %36, i32 0, i32 0
  %38 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %38, i64 %40
  store %struct.ubifs_zbranch* %41, %struct.ubifs_zbranch** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %50 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %157

54:                                               ; preds = %47, %35
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %157

58:                                               ; preds = %54
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %59, %struct.ubifs_znode** %12, align 8
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %58, %106
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %63 = call i32 @tnc_prev(%struct.ubifs_info* %62, %struct.ubifs_znode** %11, i32* %13)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %107

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %157

74:                                               ; preds = %69
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %76 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %78 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %77, i32 0, i32 0
  %79 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %79, i64 %81
  %83 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %82, i32 0, i32 2
  %84 = call i64 @keys_cmp(%struct.ubifs_info* %75, %union.ubifs_key* %76, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %107

87:                                               ; preds = %74
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %89 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %88, i32 0, i32 0
  %90 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %90, i64 %92
  store %struct.ubifs_zbranch* %93, %struct.ubifs_zbranch** %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %96 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %102 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %5, align 4
  br label %157

106:                                              ; preds = %99, %87
  br label %61

107:                                              ; preds = %86, %68
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %108, %struct.ubifs_znode** %11, align 8
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %107, %155
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %112 = call i32 @tnc_next(%struct.ubifs_info* %111, %struct.ubifs_znode** %11, i32* %13)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @ENOENT, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %157

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %5, align 4
  br label %157

123:                                              ; preds = %110
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %125 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %126 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %127 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %126, i32 0, i32 0
  %128 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %128, i64 %130
  %132 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %131, i32 0, i32 2
  %133 = call i64 @keys_cmp(%struct.ubifs_info* %124, %union.ubifs_key* %125, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %156

136:                                              ; preds = %123
  %137 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %138 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %137, i32 0, i32 0
  %139 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %139, i64 %141
  store %struct.ubifs_zbranch* %142, %struct.ubifs_zbranch** %10, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %145 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %136
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %10, align 8
  %151 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 1, i32* %5, align 4
  br label %157

155:                                              ; preds = %148, %136
  br label %110

156:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %154, %121, %120, %105, %72, %57, %53, %34, %29
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

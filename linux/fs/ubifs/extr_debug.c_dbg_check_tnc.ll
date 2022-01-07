; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_tnc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.ubifs_zbranch, i32 }
%struct.ubifs_zbranch = type { i32 }
%struct.ubifs_znode = type { i64, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ubifs_zbranch* }

@.str = private unnamed_addr constant [12 x i8] c"first znode\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"second znode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"incorrect clean_zn_cnt %ld, calculated %ld\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"incorrect dirty_zn_cnt %ld, calculated %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_tnc(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = call i32 @dbg_is_chk_index(%struct.ubifs_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %188

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 4
  %21 = call i32 @mutex_is_locked(i32* %20)
  %22 = call i32 @ubifs_assert(%struct.ubifs_info* %18, i32 %21)
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %188

29:                                               ; preds = %17
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ubifs_znode* @ubifs_tnc_postorder_first(i32 %33)
  store %struct.ubifs_znode* %34, %struct.ubifs_znode** %6, align 8
  br label %35

35:                                               ; preds = %29, %152
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %37 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 3
  store %struct.ubifs_zbranch* %42, %struct.ubifs_zbranch** %12, align 8
  br label %53

43:                                               ; preds = %35
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %45 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %47, align 8
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %50 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i64 %51
  store %struct.ubifs_zbranch* %52, %struct.ubifs_zbranch** %12, align 8
  br label %53

53:                                               ; preds = %43, %40
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %12, align 8
  %56 = call i32 @dbg_check_znode(%struct.ubifs_info* %54, %struct.ubifs_zbranch* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %188

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %66 = call i64 @ubifs_zn_dirty(%struct.ubifs_znode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %61
  %76 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %76, %struct.ubifs_znode** %11, align 8
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %78 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %79 = call %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_info* %77, %struct.ubifs_znode* %78)
  store %struct.ubifs_znode* %79, %struct.ubifs_znode** %6, align 8
  %80 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %81 = icmp ne %struct.ubifs_znode* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %153

83:                                               ; preds = %75
  %84 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %85 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %89 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %152

92:                                               ; preds = %83
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %92
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %152, label %102

102:                                              ; preds = %97
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %105 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %112 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 @keys_cmp(%struct.ubifs_info* %103, i32* %110, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %152, label %118

118:                                              ; preds = %102
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %120 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %121 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %120, i32 0, i32 3
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %127 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 0
  %130 = call i32 @dbg_check_key_order(%struct.ubifs_info* %119, %struct.TYPE_5__* %125, %struct.TYPE_5__* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %118
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %188

135:                                              ; preds = %118
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %140 = call i32 @ubifs_msg(%struct.ubifs_info* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %142 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %143 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %141, %struct.ubifs_znode* %142)
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %145 = call i32 @ubifs_msg(%struct.ubifs_info* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %147 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %148 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %146, %struct.ubifs_znode* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %188

151:                                              ; preds = %135
  br label %152

152:                                              ; preds = %151, %102, %97, %92, %83
  br label %35

153:                                              ; preds = %82
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %153
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 1
  %160 = call i64 @atomic_long_read(i32* %159)
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 1
  %166 = call i64 @atomic_long_read(i32* %165)
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @ubifs_err(%struct.ubifs_info* %163, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %166, i64 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %188

171:                                              ; preds = %156
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 0
  %175 = call i64 @atomic_long_read(i32* %174)
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 0
  %181 = call i64 @atomic_long_read(i32* %180)
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @ubifs_err(%struct.ubifs_info* %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %181, i64 %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %188

186:                                              ; preds = %171
  br label %187

187:                                              ; preds = %186, %153
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %177, %162, %138, %133, %59, %28, %16
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @dbg_is_chk_index(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(i32) #1

declare dso_local i32 @dbg_check_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*) #1

declare dso_local i64 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @keys_cmp(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i32 @dbg_check_key_order(%struct.ubifs_info*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

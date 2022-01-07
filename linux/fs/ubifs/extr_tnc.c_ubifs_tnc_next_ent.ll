; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_next_ent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_next_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_dent_node = type { i32 }
%struct.ubifs_info = type { i32, i64 }
%union.ubifs_key = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { %union.ubifs_key, i32 }

@.str = private unnamed_addr constant [5 x i8] c"key \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.fscrypt_name* %2) #0 {
  %4 = alloca %struct.ubifs_dent_node*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %struct.fscrypt_name*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_dent_node*, align 8
  %13 = alloca %struct.ubifs_zbranch*, align 8
  %14 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %7, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %17 = call i32 @key_type(%struct.ubifs_info* %15, %union.ubifs_key* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %19 = call i32 @dbg_tnck(%union.ubifs_key* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %23 = call i32 @is_hash_key(%struct.ubifs_info* %21, %union.ubifs_key* %22)
  %24 = call i32 @ubifs_assert(%struct.ubifs_info* %20, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %29 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %30 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %28, %union.ubifs_key* %29, %struct.ubifs_znode** %11, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %147

37:                                               ; preds = %3
  %38 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %39 = call i64 @fname_len(%struct.fscrypt_name* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %51 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %52 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %53 = call i32 @fallible_resolve_collision(%struct.ubifs_info* %50, %union.ubifs_key* %51, %struct.ubifs_znode** %11, i32* %8, %struct.fscrypt_name* %52, i32 0)
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %56 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %57 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %58 = call i32 @resolve_collision(%struct.ubifs_info* %55, %union.ubifs_key* %56, %struct.ubifs_znode** %11, i32* %8, %struct.fscrypt_name* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60, %struct.ubifs_znode* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %147

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %41
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %73 = call i32 @tnc_next(%struct.ubifs_info* %72, %struct.ubifs_znode** %11, i32* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %147

78:                                               ; preds = %71
  br label %90

79:                                               ; preds = %37
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %84 = call i32 @tnc_next(%struct.ubifs_info* %83, %struct.ubifs_znode** %11, i32* %8)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %147

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %79
  br label %90

90:                                               ; preds = %89, %78
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %92 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %91, i32 0, i32 0
  %93 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %93, i64 %95
  store %struct.ubifs_zbranch* %96, %struct.ubifs_zbranch** %13, align 8
  %97 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %98 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GFP_NOFS, align 4
  %101 = call %struct.ubifs_dent_node* @kmalloc(i32 %99, i32 %100)
  store %struct.ubifs_dent_node* %101, %struct.ubifs_dent_node** %12, align 8
  %102 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %103 = icmp ne %struct.ubifs_dent_node* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %147

111:                                              ; preds = %90
  %112 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %113 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %112, i32 0, i32 0
  store %union.ubifs_key* %113, %union.ubifs_key** %14, align 8
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %115 = load %union.ubifs_key*, %union.ubifs_key** %14, align 8
  %116 = call i64 @key_inum(%struct.ubifs_info* %114, %union.ubifs_key* %115)
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %118 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %119 = call i64 @key_inum(%struct.ubifs_info* %117, %union.ubifs_key* %118)
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %111
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = load %union.ubifs_key*, %union.ubifs_key** %14, align 8
  %124 = call i32 @key_type(%struct.ubifs_info* %122, %union.ubifs_key* %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121, %111
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %144

130:                                              ; preds = %121
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %132 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %13, align 8
  %133 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %134 = call i32 @tnc_read_hashed_node(%struct.ubifs_info* %131, %struct.ubifs_zbranch* %132, %struct.ubifs_dent_node* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %144

139:                                              ; preds = %130
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  store %struct.ubifs_dent_node* %143, %struct.ubifs_dent_node** %4, align 8
  br label %153

144:                                              ; preds = %138, %127
  %145 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %146 = call i32 @kfree(%struct.ubifs_dent_node* %145)
  br label %147

147:                                              ; preds = %144, %108, %87, %77, %69, %36
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %9, align 4
  %152 = call %struct.ubifs_dent_node* @ERR_PTR(i32 %151)
  store %struct.ubifs_dent_node* %152, %struct.ubifs_dent_node** %4, align 8
  br label %153

153:                                              ; preds = %147, %139
  %154 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %4, align 8
  ret %struct.ubifs_dent_node* %154
}

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @fallible_resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*, i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_read_hashed_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local %struct.ubifs_dent_node* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
